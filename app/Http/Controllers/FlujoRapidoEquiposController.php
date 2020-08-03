<?php

namespace App\Http\Controllers;

use DB;
use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator as Paginator;
use Illuminate\Support\Facades\Storage;

class FlujoRapidoEquiposController extends Controller
{
  protected $shared;

  public function __construct (BaseController $shared) {
    $this->shared = $shared;
  }

  public function index(Request $request, $nameTypePlan) {

    $chip = $this->shared->getPostpaidChipValue();

    $brand_slug = $chip->brand_slug; //'Bitel'; 
    $product_slug = $chip->product_slug; //'chip-bitel';
    $affiliation_slug = $chip->affiliation_slug; //'portabilidad';
    $plan_slug = $chip->plan_slug; //'ichip-29_90';
    $contract_slug = $chip->contract_slug; //'18-meses';
    $color_slug = null;

    $product = $this->shared->productPostpaidBySlug($brand_slug,$product_slug,$affiliation_slug,$plan_slug,$contract_slug,$color_slug);

    if(empty($product)) {
      abort(404);
    }

    $available_products = $this->shared->searchProductPostpaid('1,3', $product->affiliation_id, $product->plan_id, $product->contract_id, '', 4, 1, null, null,null, null, null, null, $product->product_id);

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
      }
      $product_images = $this->shared->productImagesByStock($product->stock_model_id);
    }
    
    $product_contracts = $this->shared->getProductContracts($product);
    $product_plans = $this->shared->getProductPlansChipsFirst($product);
    $infocomercial_product_plans = $this->shared->getInfocomercialProductPlans($product_plans);
    $product_affiliations = $this->shared->getProductAffiliations($product);

    

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

    $metatags='
    <title>Postpago Planes | Bitel Perú</title>
    <meta name="description" content="Postpago Planes | Tenemos el plan que buscas en tu Tienda Bitel online. El verdadero Todo Ilimitado desde iChip+29.9 en Portabilidad, Renovación ó Línea Nueva" />
    <meta itemprop="image" content="'.asset('/images/meta_image/logo.png').'" />
    <meta property="og:url" itemprop="url" content="'.url()->current().'" />
    <meta property="og:title" content="Postpago Planes | Bitel Perú" />
    <meta property="og:description" content="Postpago Planes | Tenemos el plan que buscas en tu Tienda Bitel online. El verdadero Todo Ilimitado desde iChip+29.9 en Portabilidad, Renovación ó Línea Nueva" />
    <meta property="og:image" content="'.asset('/images/meta_image/logo.png').'" />
    <link rel="canonical" href="'.url()->current().'" />';
  
    // *Init*  Agrega los campos de OrderController ->
    
    
    $distritosd = $this->shared->districtsList();

    $source_operators = $this->shared->operatorList();

    // Debugbar::info($this);
    // Debugbar::info($source_operators);

    // error_log($source_operators);
    // Log::error($this);


    $affiliation_list = DB::select('call PA_affiliationList()');
    //dd($affiliation_list);
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

    // *End*  Agrega los campos de OrderController <-

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
      'meta_type' => 'plan',
      'departamentos' => $departamentos,
      'provincias' => $provincias,
      'distritos' => $distritos,
      'distritosd' => $distritosd,
      'horarios' => $schedule_list,
      'source_operators' => $source_operators,
      // 'order_detail' => $order_detail,
      'dept_prov_dist_branch_list' => $dept_prov_dist_branch_list,
      'nameTypePlan' => $nameTypePlan,
      'afiliaciones' => $affiliation_list
    ];

    
    return view('flujorapidoequipos.index',$response);
    


    // var_dump($distritosd);
    
    // return view('order_form', [
    //   // 'item' => $equipo,
    //   // 'departamentos' => $departamentos,
    //   // 'provincias' => $provincias,
    //   // 'distritos' => $distritos,
    //   'distritosd' => $distritosd,
    //   // 'horarios' => $schedule_list,
    //   // 'source_operators' => $source_operators,
    //   // 'affiliation_list' => $affiliation_list,
    //   // 'order_detail' => $order_detail,
    //   // 'dept_prov_dist_branch_list' => $dept_prov_dist_branch_list,
    //   // 'category' => $extra_product_information->category_id,
    //   // 'product_model' => $extra_product_information->product_model
    // ]);

    //  $distritosd = ['LIMA', 'ANCÓN', 'ATE', 'BARRANCO', 'BRENA', 'CARABAYLLO',
    //   'CHACLACAYO', 'CHORRILLOS', 'CIENEGUILLA', 'COMAS', 'EL AGUSTINO',
    //   'INDEPENDENCIA', 'JESÚS MARÍA', 'LA MOLINA', 'LA VICTORIA', 'LINCE',
    //   'LOS OLIVOS', 'LURIGANCHO', 'LURIN', 'MAGDALENA DEL MAR', 'MAGDALENA VIEJA',
    //   'MIRAFLORES', 'PACHACAMAC', 'PUCUSANA', 'PUENTE PIEDRA', 'PUNTA HERMOSA',
    //   'PUNTA NEGRA', 'RÍMAC', 'SAN BARTOLO', 'SAN BORJA', 'SAN ISIDRO',
    //   'SAN JUAN DE LURIGANCHO', 'SAN JUAN DE MIRAFLORES', 'SAN LUIS',
    //   'SAN MARTÍN DE PORRES', 'SAN MIGUEL', 'SANTA ANITA', 'SANTA MARÍA DEL MAR',
    //   'SANTA ROSA', 'SANTIAGO DE SURCO', 'SURQUILLO', 'VILLA EL SALVADOR',
    //   'SURQUILLO', 'VILLA EL SALVADOR', 'VILLA MARÍA DEL TRIUNFO',  'CALLAO',
    //   'BELLAVISTA', 'CARMEN DE LA LEGUA REYNOSO', 'LA PERLA', 'LA PUNTA', 'VENTANILLA'
    // ];

    



  }
  public function indexApi(Request $request) {
    $chip = $this->shared->getPostpaidChipValue();

    $brand_slug = $chip->brand_slug; //'Bitel'; 
    $product_slug = $chip->product_slug; //'chip-bitel';
    $affiliation_slug = $chip->affiliation_slug; //'portabilidad';
    $plan_slug = $chip->plan_slug; //'ichip-29_90';
    $contract_slug = $chip->contract_slug; //'18-meses';
    $color_slug = null;

    $product = $this->shared->productPostpaidBySlug($brand_slug,$product_slug,$affiliation_slug,$plan_slug,$contract_slug,$color_slug);

    if(empty($product)) {
      abort(404);
    }

    $available_products = $this->shared->searchProductPostpaid('1,3', $product->affiliation_id, $product->plan_id, $product->contract_id, '', 4, 1, null, null,null, null, null, null, $product->product_id);

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
      }
      $product_images = $this->shared->productImagesByStock($product->stock_model_id);
    }
    
    $product_contracts = $this->shared->getProductContracts($product);
    $product_plans = $this->shared->getProductPlansChips($product);
    $infocomercial_product_plans = $this->shared->getInfocomercialProductPlans($product_plans);
    $product_affiliations = $this->shared->getProductAffiliations($product);

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
      'just_3' => $i <= 3
    ];

    return $response;
  }

  // public function createOrder (Request $request){

  //   // return view('planes.index',$response);
    
  // }

}