<?php

namespace App\Http\Controllers;

use DB;
use Validator;
use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator as Paginator;
use Illuminate\Support\Facades\Storage;

class PostpaidController extends Controller
{
  protected $shared;

  public function __construct (BaseController $shared) {
    $this->shared = $shared;
  }

  public function index(Request $request) {
    $affiliation_id = \Config::get('filter.affiliation_id');
    $plan_post_id = \Config::get('filter.plan_post_id');
    $contract_id = \Config::get('filter.contract_id');

    $request->validate([
      'buscar' => 'nullable|max:30|regex:/(^[A-Za-z0-9.\+\- ]+$)+/'
    ]);

    $searched_string = $request->has('buscar') ? $searched_string = $request->buscar : '';

    $items_per_page = 12;
    $current_page = ($request->has('pag')) ? $request->pag : 1 ;

    $search_result = $this->shared->searchProductPostpaid(1, $affiliation_id, $plan_post_id, $contract_id, null, $items_per_page, $current_page, "publish_at", "desc", 0 , 0, $searched_string);
    
    $filtered_product = null;
    foreach ($search_result['products'] as $ix => $prod) {
      $prod_full_name = strtolower($prod->brand_name.' '.$prod->product_model);
      $prod_model_name = strtolower($prod->product_model);
      $searched_string = strtolower(trim($searched_string));
      if ($searched_string == $prod_full_name || $searched_string == $prod_model_name) {
        $filtered_product = $prod;
      }
    }

    if (isset($filtered_product)) {
      $search_result['products'] = [$filtered_product];
      $search_result['total'] = 1;  
    }

    $pages = intval(ceil($search_result['total'] / $items_per_page));
    $paginator = new Paginator(
      $search_result['products'],
      $search_result['total'],
      $items_per_page, $current_page,
      [ 'pageName' => 'pag' ]
    );

    $paginator->withPath('postpago');

    $filterList = $this->shared->getFiltersPostpaid();

    $banner = $this->shared->getImage(10);

    $metatags='<title>Catálogo de Equipos Postpago | Bitel</title>
    <meta name="description" content="Bitel, Huawei, Meizu, Alcatel, Lenovo, LG, Samsung, Sky, Stay On" />
    <meta itemprop="image" content="'.asset('/images/meta_image/logo.png').'" />
    <meta property="og:url" itemprop="url" content="'.url()->current().'" />
    <meta property="og:title" content="Catálogo de Equipos Postpago | Bitel" />
    <meta property="og:description" content="Bitel, Huawei, Meizu, Alcatel, Lenovo, LG, Samsung, Sky, Stay On" />
    <meta property="og:image" content="'.asset('/images/meta_image/logo.png').'" />
    <link rel="canonical" href="'.url()->current().'" />';

    return view('smartphones.postpago.index', ['products' => $paginator, 'pages' => $pages, 'filters' => $filterList, 'searched_string' => $searched_string, 'banner' => $banner,
      'metatags' => $metatags,
      'meta_type' => 'smartphones.postpago.index']);
  }
  
  //public function show(Request $request, $brand_slug,$product_slug,$affiliation_slug,$plan_slug,$color_slug=null,$contract_slug='18-meses') {

  public function show(Request $request, $brand_slug,$product_slug,$affiliation_slug,$plan_slug,$contract_slug,$color_slug=null) {

    $inputs = [
        'brand_slug' => $brand_slug,
        'product_slug' => $product_slug,
        'affiliation_slug' => $affiliation_slug,
        'plan_slug' => $plan_slug,
        'contract_slug' => $contract_slug,
        'color_slug' => $color_slug
    ];

    $validator = Validator::make($inputs, [
        'brand_slug' => 'required|exists:tbl_brand',
        'product_slug' => 'required|exists:tbl_product',
        'affiliation_slug' => 'required|exists:tbl_affiliation',
        'plan_slug' => 'required|exists:tbl_plan',
        'contract_slug' => 'required|exists:tbl_contract',
        'color_slug' => 'nullable|exists:tbl_color'
    ]);

    if ($validator->fails()) {
        abort(404);
    }

    $product = $this->shared->productPostpaidBySlug($brand_slug,$product_slug,$affiliation_slug,$plan_slug,$contract_slug,$color_slug);

    if(empty($product)) {
      abort(404);
    }

    $available_products = $this->shared->searchProductPostpaid('1,3', $product->affiliation_id, $product->plan_id, $product->contract_id, '', 4, 1, null, null,null, null, null, null, $product->product_id, 0);

    $available = $available_products['products'];
    foreach($available as $i => $item) {
      $available[$i]->route = route('postpaid_detail', [
        'brand'=>$item->brand_slug,
        'product'=>$item->product_slug,
        'plan'=>$plan_slug,
        'affiliation'=>$affiliation_slug,
        'contract'=>$contract_slug
      ]);
      $available[$i]->api_route = route('api_postpaid_detail', [
        'brand'=>$item->brand_slug,
        'product'=>$item->product_slug,
        'plan'=>$plan_slug,
        'affiliation'=>$affiliation_slug,
        'contract'=>$contract_slug
      ]);
    }

    $stock_models = [];
    $product_images = [];    
    $product_images_of_stock_models = [];
    if($product->stock_model_id) {
      $stock_models = $this->shared->productStockModels($product->product_id);
      foreach($stock_models as $i => $item) {
        $stock_models[$i]->route = route('postpaid_detail', [
          'brand'=>$brand_slug,
          'product'=>$product->product_slug,
          'plan'=>$plan_slug,
          'affiliation'=>$affiliation_slug,
          'contract'=>$contract_slug,
          'color'=>$item->color_slug
        ]);
        $stock_models[$i]->api_route = route('api_postpaid_detail', [
          'brand'=>$brand_slug,
          'product'=>$product->product_slug,
          'plan'=>$plan_slug,
          'affiliation'=>$affiliation_slug,
          'contract'=>$contract_slug,
          'color'=>$item->color_slug
        ]);

        $temp_images = $this->shared->productImagesByStock($item->stock_model_id);
        $product_images = array_merge($product_images, $temp_images);
      }
      //$product_images = $this->shared->productImagesByStock($product->stock_model_id); /**230519**/
    }

    //TODO: Obtener valores de la BD con SP independientes. Cada cambio en el frontend debe ser una request independiente
    // $product_affiliations = $this->shared->productAffiliations($product->product_id);
    // $product_plans = $this->shared->productPlans($product->product_id);
    // $product_contracts = $this->shared->productContracts($product->product_id);

    // TEMPORAL
    // $product_plans = DB::select('call PA_planList(2)');
    // $product_affiliations = DB::select('call PA_affiliationList()');
    
    $product_contracts = $this->shared->getProductContracts($product);
    
    $product_affiliations = $this->shared->getProductAffiliations($product);

    $product_plans = $this->shared->getProductPlansFirst($product);
    
    $infocomercial_product_plans = $this->shared->getInfocomercialProductPlans($product_plans);
 
    collect($product_contracts)->map(function ($item, $key) use ($product, $color_slug) {
      $item->route = route('postpaid_detail', [
        'brand'=>$product->brand_slug,
        'product'=>$product->product_slug,
        'plan'=>$item->plan_slug,
        'affiliation'=>$item->affiliation_slug,
        'contract'=>$item->contract_slug,
        'color' => isset($color_slug) ? $color_slug : null
      ]);
      $item->api_route = route('api_postpaid_detail', [
        'brand'=>$product->brand_slug,
        'product'=>$product->product_slug,
        'plan'=>$item->plan_slug,
        'affiliation'=>$item->affiliation_slug,
        'contract'=>$item->contract_slug,
        'color' => isset($color_slug) ? $color_slug : null
      ]);
      return $item;
    });

    collect($product_affiliations)->map(function ($item, $key) use ($product, $color_slug) {
      $item->route = route('postpaid_detail', [
        'brand'=>$product->brand_slug,
        'product'=>$product->product_slug,
        'plan'=>$item->plan_slug,
        'affiliation'=>$item->affiliation_slug,
        'contract'=>$item->contract_slug,
        'color' => isset($color_slug) ? $color_slug : null
      ]);
      $item->api_route = route('api_postpaid_detail', [
        'brand'=>$product->brand_slug,
        'product'=>$product->product_slug,
        'plan'=>$item->plan_slug,
        'affiliation'=>$item->affiliation_slug,
        'contract'=>$item->contract_slug,
        'color' => isset($color_slug) ? $color_slug : null
      ]);
      return $item;
    });

    collect($product_plans)->map(function ($item, $key) use ($product, $color_slug) {
      $item->route = route('postpaid_detail', [
        'brand'=>$product->brand_slug,
        'product'=>$product->product_slug,
        'plan'=>$item->plan_slug,
        'affiliation'=>$item->affiliation_slug,
        'contract'=>$item->contract_slug,
        'color' => isset($color_slug) ? $color_slug : null
      ]);
      $item->api_route = route('api_postpaid_detail', [
        'brand'=>$product->brand_slug,
        'product'=>$product->product_slug,
        'plan'=>$item->plan_slug,
        'affiliation'=>$item->affiliation_slug,
        'contract'=>$item->contract_slug,
        'color' => isset($color_slug) ? $color_slug : null
      ]);
      foreach ($item->affiliations as $key => $affil) {
        $item->affil_classes[] = 'plan_aff_'.$affil;
      }
      $item->affil_classes = implode(' ', $item->affil_classes);
      return $item;
    });

    $i = 0;
    foreach($product_plans as $plan) {
      if($plan->affiliation_id == $product->affiliation_id) {
        if($plan->plan_id == $product->plan_id) {
          $selected_plan = $i;
        }
        $i++;
      }
    }

    if(!isset($selected_plan)) {
      $selected_plan = 0;
    }


    $metatags='<title>'.$product->brand_name.' '.$product->product_model.', Postpago | Bitel</title>
    <meta name="description" content="'.$this->clean_description($product->product_description).'" />
    <meta itemprop="image" content="'.asset(Storage::url($product->product_image_url)).'" />
    <meta property="og:url" itemprop="url" content="'.url()->current().'" />
    <meta property="og:title" content="'.$product->brand_name.' '.$product->product_model.', Postpago | Bitel" />
    <meta property="og:description" content="'.$this->clean_description($product->product_description).'" />
    <meta property="og:image" content="'.asset(Storage::url($product->product_image_url)).'" />
        <link rel="canonical" href="'.url()->current().'" />';

    $response = [
      'product' => $product,
      'product_images' => $product_images,
      'stock_models' => $stock_models,
      'available' => $available,
      'plans' => $product_plans,
      'info_comercial' => $infocomercial_product_plans,
      'contracts' => $product_contracts,
      'affiliations' => $product_affiliations,
      'selected_plan' => $selected_plan,
      'just_3' => $i <= 3,
      'metatags' => $metatags,
      'meta_type' => 'smartphones.postpago.detail',
      'product_images_of_stock_models' => $product_images_of_stock_models
    ];



    $chip_cat_id = \Config::get('filter.category_id');

    if ($product->category_id == $chip_cat_id) {
      return view('planes.index', $response);
    } else {
      return view('smartphones.postpago.detail', $response);
    }
  }

  public function clean_description($text){
      return preg_replace("/[\r\n|\n|\r]+/", " ", preg_replace("/[\r\n|\n|\r]+/", PHP_EOL,html_entity_decode(htmlspecialchars_decode(trim(strip_tags($text))))));
  }

  public function compare (Request $request) {
    $request->validate([
      'product_variation_id' => 'required|array',
      'product_variation_id.*' => 'required|max:9|regex:/(^[0-9]+$)+/',
    ]);
    // return $request->all();
    $products = [];
    foreach ($request->product_variation_id as $product_variation_id) {
      $product = $this->shared->productVariationDetail($product_variation_id);
      if (isset($product)) {
        $product->route = route('postpaid_detail', [
          'brand'=>$product->brand_slug,
          'product'=>$product->product_slug,
          'affiliation'=>$product->affiliation_slug,
          'plan'=>$product->plan_slug,
          'contract'=>$product->contract_slug
        ]);
        array_push($products, $product);
      } else {
        abort(404);
      }
    }
    // return $products;
    return view('smartphones.postpago.compare', ['products' => $products]);
  }
  public function completeContractPostpago (Request $request) {
    
    $brand=$request->brand;
    $product=$request->product;
    $affiliation=$request->affiliation;
    $plan=$request->plan;

    if($product!='chip-bitel')

      return redirect('/postpago/'.$brand.'/'.$product.'/'.$affiliation.'/'.$plan.'/6-meses');

    else

      return redirect('/postpago/'.$brand.'/'.$product.'/'.$affiliation.'/'.$plan.'/sin-contrato');

  }
}
