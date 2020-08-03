<?php

namespace App\Http\Controllers;

use DB;
use Validator;
use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator as Paginator;
use Illuminate\Support\Facades\Storage;

class FlujoRapidoEqidController extends Controller
{
  protected $shared;

  public function __construct (BaseController $shared) {
    $this->shared = $shared;
  }


  //public function show(Request $request, $brand_slug,$product_slug,$affiliation_slug,$plan_slug,$color_slug=null,$contract_slug='18-meses') {

  public function index(Request $request, $brand_slug,$product_slug,$affiliation_slug)  {

    // dump($request);

    $productDataSlug = DB::table('tbl_product_variation')
    ->join('tbl_product','tbl_product.product_id','=','tbl_product_variation.product_id')
    ->join('tbl_contract','tbl_contract.contract_id', '=', 'tbl_product_variation.contract_id')
    ->join('tbl_stock_model','tbl_stock_model.product_id','=','tbl_product.product_id')
    ->join('tbl_brand','tbl_brand.brand_id','=','tbl_product.brand_id')
    ->where('tbl_product_variation.contract_id', 1)
    ->where('product_slug',$product_slug)->first();

    // dump($productDataSlug);

    // getProductPlans
    
    $getProductPlans = $this->shared->getProductPlans($productDataSlug);



    $nameTypePlan = $affiliation_slug;
    $color_slug = null;
    $plan_slug = $getProductPlans[0]->plan_slug;
    $contract_slug = 'sin-contrato';
    $planPrep_slug = 'bifri-5';



    $productPortbabilidad = $this->shared->productPostpaidBySlug($brand_slug,$product_slug,'portabilidad',$plan_slug,'6-meses',$color_slug);

    // if(count($productPortbabilidad)>0){
    if($productPortbabilidad){

    $product_plans_portabilidad = $this->shared->getProductPlans($productPortbabilidad);
    }else{
    $product_plans_portabilidad = [];
    }

    // dd($product_plans_portabilidad);


    $productLineaNueva = $this->shared->productPostpaidBySlug($brand_slug,$product_slug,'linea-nueva',$plan_slug,'6-meses',$color_slug);

    // if(count($productLineaNueva)){
    if($productLineaNueva){

    $product_plans_lineanueva = $this->shared->getProductPlans($productLineaNueva);
    }else{
    $product_plans_lineanueva = [];
    }

    // dd($product_plans_lineanueva);

    

    $productRenovacion = $this->shared->productPostpaidBySlug($brand_slug,$product_slug,'renovacion',$plan_slug,'6-meses',$color_slug);
    // !count($cart)
    if($productRenovacion){

    $product_plans_renovacion = $this->shared->getProductPlans($productRenovacion);

    }else{
    $product_plans_renovacion = [];
    }

    // dd($product_plans_renovacion);

    if($affiliation_slug == 'portabilidad'){

      $plan_slugA = $product_plans_portabilidad[0]->plan_slug;

      $product = $this->shared->productPostpaidBySlug($brand_slug,$product_slug,'portabilidad',$plan_slugA,'6-meses',$color_slug);

      $productPrep = $this->shared->productPrepaidBySlug($brand_slug,$product_slug,$planPrep_slug,$color_slug);

      if(!empty($productPrep->promo_price)){
        $productPrice = $productPrep->promo_price;
      }else{
        $productPrice = $productPrep->product_price;
      }

      

      // dd($product);

      if(!$product){
        abort(404);
      }
    }

    if($affiliation_slug == 'renovacion'){

      $plan_slugA = $product_plans_renovacion[0]->plan_slug;

      $product = $this->shared->productPostpaidBySlug($brand_slug,$product_slug,'renovacion',$plan_slugA,'6-meses',$color_slug);

      $productPrep = $this->shared->productPrepaidBySlug($brand_slug,$product_slug,$planPrep_slug,$color_slug);

      if(!empty($productPrep->promo_price)){
        $productPrice = $productPrep->promo_price;
      }else{
        $productPrice = $productPrep->product_price;
      }


      // dd($productPrep);

      if(!$product){
        abort(404);
      }
    }

    if($affiliation_slug == 'linea-nueva'){

      $plan_slugA = $product_plans_lineanueva[0]->plan_slug;

      $product = $this->shared->productPostpaidBySlug($brand_slug,$product_slug,'linea-nueva',$plan_slugA,'6-meses',$color_slug);

      $productPrep = $this->shared->productPrepaidBySlug($brand_slug,$product_slug,$planPrep_slug,$color_slug);

      if(!empty($productPrep->promo_price)){
        $productPrice = $productPrep->promo_price;
      }else{
        $productPrice = $productPrep->product_price;
      }


      if(!$product){
        abort(404);
      }
    }

    if($affiliation_slug == 'prepago'){

      $productPrep = $this->shared->productPrepaidBySlug($brand_slug,$product_slug,$planPrep_slug,$color_slug);

      if(!empty($productPrep->promo_price)){
        $productPrice = $productPrep->promo_price;
      }else{
        $productPrice = $productPrep->product_price;
      }

      

      $plan_slugA = $product_plans_portabilidad[0]->plan_slug;

      $product = $this->shared->productPostpaidBySlug($brand_slug,$product_slug,'portabilidad',$plan_slugA,'6-meses',$color_slug);

      if(!$productPrep){
        abort(404);
      }
    }

    //if($affiliation_slug == 'prepago'){
      //$productPrep = $this->shared->productPrepaidBySlug($brand_slug,$product_slug,$planPrep_slug,$color_slug);

      // $planPrep_slug = $productPrep->plan_slug;

     
      
    // }else{
      // $productPrep = $this->shared->productPrepaidBySlug($brand_slug,$product_slug,$planPrep_slug,$color_slug);

      // $product = $this->shared->productPostpaidBySlug($brand_slug,$product_slug,$affiliation_slug,$plan_slug,$contract_slug,$color_slug);
      
      // $product_affiliations = $this->shared->getProductAffiliations($product);

      // dd($product_affiliations);
      // if(!$product){
      //   abort(404);
      // }
    // }
    
    // OptionsPlan


    //$product = $this->shared->productPostpaidBySlug($brand_slug,$product_slug,$affiliation_slug,$plan_slug,$contract_slug,$color_slug);
    //dump($product);
   
    // dd($product);

    // $productPrep = $this->shared->productPrepaidBySlug($brand_slug,$product_slug,$planPrep_slug,$color_slug);

    // dd($productPrep);

    

    // dd($product);
   
    // dd($productPrep);


    


    // $inputs = [
    //     'brand_slug' => $brand_slug,
    //     'product_slug' => $product_slug,
    //     'affiliation_slug' => $affiliation_slug,
    //     'plan_slug' => $plan_slug,
    //     'contract_slug' => $contract_slug,
    //     'color_slug' => $color_slug
    // ];

    // $validator = Validator::make($inputs, [
    //     'brand_slug' => 'required|exists:tbl_brand',
    //     'product_slug' => 'required|exists:tbl_product',
    //     'affiliation_slug' => 'required|exists:tbl_affiliation',
    //     'plan_slug' => 'required|exists:tbl_plan',
    //     'contract_slug' => 'required|exists:tbl_contract',
    //     'color_slug' => 'nullable|exists:tbl_color'
    // ]);

    // if ($validator->fails()) {
    //     abort(404);
    // }


    

    

    // $product = $this->shared->productPostpaidBySlug($brand_slug,$product_slug,$affiliation_slug,$plan_slug,$contract_slug,$color_slug);
    
    // $product = $this->shared->productPostpaidBySlug($brand_slug,$product_slug,$affiliation_slug,$plan_slug,$contract_slug,$color_slug);

    // if(empty($product)) {
    //   abort(404);
    // }

    $available_products = $this->shared->searchProductPostpaid('1,3', $product->affiliation_id, $product->plan_id, $product->contract_id, '', 4, 1, null, null,null, null, null, null, $product->product_id, 0);

    $available = $available_products['products'];
    foreach($available as $i => $item) {
      $available[$i]->route = route('flujorapidoequipos_detail', [
        'brand'=>$item->brand_slug,
        'product'=>$item->product_slug,
        'plan'=>$plan_slug,
        'affiliation'=>$affiliation_slug,
        'contract'=>$contract_slug
      ]);
      $available[$i]->api_route = route('api_flujorapidoequipos_detail', [
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
        $stock_models[$i]->route = route('flujorapidoequipos_detail', [
          'brand'=>$brand_slug,
          'product'=>$product->product_slug,
          'plan'=>$plan_slug,
          'affiliation'=>$affiliation_slug,
          'contract'=>$contract_slug,
          'color'=>$item->color_slug
        ]);
        $stock_models[$i]->api_route = route('api_flujorapidoequipos_detail', [
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

    $product_plans = $this->shared->getProductPlans($product);


 
    
    


    
    $infocomercial_product_plans = $this->shared->getInfocomercialProductPlans($product_plans);

    // *Init*  Agrega los campos de OrderController ->
    
    
    $distritosd = $this->shared->districtsList();

    $source_operators = $this->shared->operatorList();


    $schedule_list = DB::select('call PA_scheduleList()');

    $dept_prov_dist_branch_list = DB::select('call PA_deptprovdistbrachList()');

    // obtener los dfatos de departamento , provincia y distrito en base al primer registro 
    $departamento = $dept_prov_dist_branch_list[0]->departament_id;
    $provincia = $dept_prov_dist_branch_list[0]->province_id;
    $distrito = $dept_prov_dist_branch_list[0]->district_id;

    // obtener los datos de los departamentos unicos
    $departamentos = array();
    foreach ($dept_prov_dist_branch_list as $dept){
      $departamentos[$dept->departament_id] = $dept;
    }

    // obtener las provincias en funciona al primer departamento
    $provincias = array();
    foreach ($dept_prov_dist_branch_list as $prov){
      if($prov->departament_id == $departamento){
        $provincias[$prov->province_id] = $prov;
      }
    }

    // obtener los distritos en funcion a la primera provincia
    $distritos = array();
    foreach ($dept_prov_dist_branch_list as $dist){
      if($dist->departament_id == $departamento and $dist->province_id == $provincia){
        $distritos[$dist->district_id] = $dist;
      }
    }
 
    collect($product_contracts)->map(function ($item, $key) use ($product, $color_slug) {
      $item->route = route('flujorapidoequipos_detail', [
        'brand'=>$product->brand_slug,
        'product'=>$product->product_slug,
        'plan'=>$item->plan_slug,
        'affiliation'=>$item->affiliation_slug,
        'contract'=>$item->contract_slug,
        'color' => isset($color_slug) ? $color_slug : null
      ]);
      $item->api_route = route('api_flujorapidoequipos_detail', [
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
      $item->route = route('flujorapidoequipos_detail', [
        'brand'=>$product->brand_slug,
        'product'=>$product->product_slug,
        'plan'=>$item->plan_slug,
        'affiliation'=>$item->affiliation_slug,
        'contract'=>$item->contract_slug,
        'color' => isset($color_slug) ? $color_slug : null
      ]);
      $item->api_route = route('api_flujorapidoequipos_detail', [
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
      $item->route = route('flujorapidoequipos_detail', [
        'brand'=>$product->brand_slug,
        'product'=>$product->product_slug,
        'plan'=>$item->plan_slug,
        'affiliation'=>$item->affiliation_slug,
        'contract'=>$item->contract_slug,
        'color' => isset($color_slug) ? $color_slug : null
      ]);
      $item->api_route = route('api_flujorapidoequipos_detail', [
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

    $afiliaciones_totales = [
      [
        'nombre' => 'portabilidad',
      ],
      [
        'nombre' => 'linea-nueva',
      ],
      [
        'nombre' => 'renovacion',
      ]
    ];

    foreach($afiliaciones_totales as $item){
      

      foreach ($product_affiliations as $item_buscar){
        
        if($item_buscar->affiliation_slug == $item['nombre']){
          $busqueda = true;
          break;
        }else{
          $busqueda = false;
        }

      }

        if($item['nombre'] == 'portabilidad'){
          $nombre = 'Portabilidad';
        }else if($item['nombre'] == 'linea-nueva'){
          $nombre = 'Línea nueva';
        }else{
          $nombre = 'Migración';
        }

        $tabs[] = [
          'slug' => $item['nombre'],
          'nombre' => $nombre,
          'activo' => $busqueda
        ];

    }

    // dd($product_plans);

    $response = [
      'product' => $product,
      'productPrep' => $productPrep,
      'product_images' => $product_images,
      'stock_models' => $stock_models,
      'available' => $available,
      'plans' => $product_plans,
      'plansPortabilidad' => $product_plans_portabilidad,
      'plansLineaNueva' => $product_plans_lineanueva,
      'plansRenovacion' => $product_plans_renovacion,
      'info_comercial' => $infocomercial_product_plans,
      'contracts' => $product_contracts,
      'affiliations' => $product_affiliations,
      'selected_plan' => $selected_plan,
      'just_3' => $i <= 3,
      'metatags' => $metatags,
      'meta_type' => 'smartphones.postpago.detail',
      // 
      'departamentos' => $departamentos,
      'provincias' => $provincias,
      'distritos' => $distritos,
      'distritosd' => $distritosd,
      'horarios' => $schedule_list,
      'source_operators' => $source_operators,
      'dept_prov_dist_branch_list' => $dept_prov_dist_branch_list,
      'product_images_of_stock_models' => $product_images_of_stock_models,
      'afiliaciones_totales' => $afiliaciones_totales,
      'tabs' => $tabs,
      'nameTypePlan' => $nameTypePlan,
      'productPrice' => $productPrice
    ];

    // dump($response);

    return view('flujorapidoequipos.index', $response);


    // $chip_cat_id = \Config::get('filter.category_id');

    // if ($product->category_id == $chip_cat_id) {
    //   return view('flujorapidoequipos.index', $response);
    // } else {
    //   return view('flujorapidoequipos.index', $response);
    // }
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
        $product->route = route('flujorapidoequipos_detail', [
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
    return view('flujorapidoequipos.compare', ['products' => $products]);
  }

  public function completeContractFlujoRapidoEquipo (Request $request) {
    
    $brand=$request->brand;
    $product=$request->product;
    $affiliation=$request->affiliation;
    $plan=$request->plan;

    if($product!='chip-bitel')

      return redirect('/flujorapidoequipos/'.$brand.'/'.$product.'/'.$affiliation.'/'.$plan.'/6-meses');

    else

      return redirect('/flujorapidoequipos/'.$brand.'/'.$product.'/'.$affiliation.'/'.$plan.'/sin-contrato');

  }

  public function BuscarNombre($buscar , $en_donde_buscar)
  {
    foreach ($en_donde_buscar as $item){
      
      if($item == $buscar){
        return true;
      }else{
        return false;
      }
    }

  }
}