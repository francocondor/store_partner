<?php

namespace App\Http\Controllers\Api;

use DB;
use Validator;
use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Pagination\LengthAwarePaginator as Paginator;
use Illuminate\Support\Facades\Storage;

class PostpaidController extends Controller
{

  protected $shared;

  public function __construct (BaseController $shared) {
    $this->shared = $shared;
  }

  //public function show($brand_slug,$product_slug,$affiliation_slug,$plan_slug,$color_slug=null,$contract_slug='18-meses') {

  //public function show($brand_slug,$product_slug,$affiliation_slug,$plan_slug,$color_slug=null,$contract_slug) {
  public function show($brand_slug,$product_slug,$affiliation_slug,$plan_slug,$contract_slug,$color_slug=null) {
  
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
          return response()->json(["error" => ["message" => "Product not found1."]], 404);
      }

    $product = $this->shared->productPostpaidBySlug($brand_slug,$product_slug,$affiliation_slug,$plan_slug,$contract_slug,$color_slug);

    if(empty($product)) {
      return response()->json(["error" => ["message" => "Product not found2."]], 404);
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

      $available[$i]->picture_url = asset(Storage::url($item->picture_url));
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

    $product_plans_aux = [];
    $product_plans_aux = $product_plans;

    //---------------------------------------------------------------------
    // agregando la informacion comercial de los planes a product_plans
    //---------------------------------------------------------------------
    $i = 0;
    while($i < count($infocomercial_product_plans)) {
      $x = 0;
      while($x < count($product_plans_aux)) {
        if($infocomercial_product_plans[$i]->plan_id == $product_plans_aux[$x]->plan_id) {
            $product_plans[$x]->info_comercial[] = $infocomercial_product_plans[$i];
        }
        $x++;
      }
      $i++;
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

    return response()->json($response);
  }
}
