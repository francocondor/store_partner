<?php

namespace App\Http\Controllers;

use DB;
use Route;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

class BaseController extends Controller
{
  public function searchProductPrepaid ($category_id=1, $plan_id=null, $product_brands='', $pag_total_by_page=20, $pag_actual=1, $sort_by="", $sort_direction="", $product_price_ini=0, $product_price_end=0, $product_string_search="", $product_tag="", $product_ignore_ids="") {
    $products = DB::select('call PA_productSearchPrepago(
      :product_categories,
      :product_brands,
      :plan_id,
      :product_price_ini,
      :product_price_end,
      :product_string_search,
      :pag_total_by_page,
      :pag_actual,
      :sort_by,
      :sort_direction,
      :product_tag,
      :product_ignore_ids
    )', [
      'product_categories' => $category_id,
      'product_brands' => strval($product_brands),
      'plan_id' => $plan_id,
      'product_price_ini' => $product_price_ini,
      'product_price_end' => $product_price_end,
      'product_string_search' => $product_string_search,
      'pag_total_by_page' => $pag_total_by_page,
      'pag_actual' => $pag_actual,
      'sort_by' => $sort_by,
      'sort_direction' => $sort_direction,
      'product_tag' => $product_tag,
      'product_ignore_ids' => $product_ignore_ids
    ]);

    $total = DB::select('call PA_productCountPrepago(
      :product_categories,
      :product_brands,
      :plan_id,
      :product_price_ini,
      :product_price_end,
      :product_string_search,
      :product_tag,
      :product_ignore_ids
    )', [
      'product_categories' => $category_id,
      'product_brands' => strval($product_brands),
      'plan_id' => $plan_id,
      'product_price_ini' => $product_price_ini,
      'product_price_end' => $product_price_end,
      'product_string_search' => $product_string_search,
      'product_tag' => $product_tag,
      'product_ignore_ids' => $product_ignore_ids
    ]);

    return ['products' => $products, 'total' => $total[0]->total_products];
  }

  public function productPrepaidBySlug($brand,$product,$plan,$color=null) {
    $result = DB::select('call PA_productPrepagoBySlug(
      :brand_slug,
      :product_slug,
      :plan_slug,
      :color_slug
    )', [
      'brand_slug' => $brand,
      'product_slug' => $product,
      'plan_slug' => $plan,
      'color_slug' => $color
    ]);

    return count($result) > 0 ? $result[0] : null;
  }

  public function productPrepagoByStock($stock_model_id,$product_variation_id) {
    $result = DB::select('call PA_productPrepagoByStock(
      :stock_model_id,
      :product_variation_id
    )', [
      'stock_model_id' => $stock_model_id,
      'product_variation_id' => $product_variation_id
    ]);

    return count($result) > 0 ? $result[0] : null;
  }

  public function searchProductPostpaid($category_id=1, $affiliation_id=1, $plan_id=7, $contract_id=1, $product_brands='', $pag_total_by_page=20, $pag_actual=1, $sort_by="", $sort_direction="", $product_price_ini=0, $product_price_end=0, $product_string_search="", $product_tag="", $product_ignore_ids = "", $only_best_variation = 1) {

    $products = DB::select('call PA_productSearchPostpago(
      :product_categories,
      :product_brands,
      :affiliation_id,
      :plan_id,
      :contract_id,
      :product_price_ini,
      :product_price_end,
      :product_string_search,
      :pag_total_by_page,
      :pag_actual,
      :sort_by,
      :sort_direction,
      :product_tag,
      :product_ignore_ids,
      :only_best_variation
    )', [
      'product_categories' => $category_id,
      'product_brands' => strval($product_brands),
      'affiliation_id' => $affiliation_id,
      'plan_id' => $plan_id,
      'contract_id' => $contract_id,
      'product_price_ini' => $product_price_ini,
      'product_price_end' => $product_price_end,
      'product_string_search' => $product_string_search,
      'pag_total_by_page' => $pag_total_by_page,
      'pag_actual' => $pag_actual,
      'sort_by' => $sort_by,
      'sort_direction' => $sort_direction,
      'product_tag' => $product_tag,
      'product_ignore_ids' => $product_ignore_ids,
      'only_best_variation' => $only_best_variation,
    ]);

    $total = DB::select('call PA_productCountPostpago(
      :product_categories,
      :product_brands,
      :affiliation_id,
      :plan_id,
      :contract_id,
      :product_price_ini,
      :product_price_end,
      :product_string_search,
      :product_tag,
      :product_ignore_ids
    )', [
      'product_categories' => $category_id,
      'product_brands' => strval($product_brands),
      'affiliation_id' => $affiliation_id,
      'plan_id' => $plan_id,
      'contract_id' => $contract_id,
      'product_price_ini' => $product_price_ini,
      'product_price_end' => $product_price_end,
      'product_string_search' => $product_string_search,
      'product_tag' => $product_tag,
      'product_ignore_ids' => $product_ignore_ids
    ]);

    return ['products' => $products, 'total' => $total[0]->total_products];
  }

  public function getPostpaidChipValue() {

    $category_id = \Config::get('filter.category_id');

    $result = DB::table('tbl_brand')
    ->join('tbl_product', 'tbl_brand.brand_id', '=', 'tbl_product.brand_id')
    ->join('tbl_product_variation', 'tbl_product.product_id', '=', 'tbl_product_variation.product_id')
    ->join('tbl_affiliation', 'tbl_product_variation.affiliation_id', '=', 'tbl_affiliation.affiliation_id')
    ->join('tbl_plan', 'tbl_plan.plan_id', '=', 'tbl_product_variation.plan_id')
    ->join('tbl_contract', 'tbl_contract.contract_id', '=', 'tbl_product_variation.contract_id')
    ->where('tbl_product.category_id', $category_id)
    ->where('tbl_product_variation.affiliation_id', '>', 0)
    ->where('tbl_plan.active', 1)
    ->where('tbl_contract.active', 1)
    ->where('tbl_product_variation.variation_type_id', 2)
    ->where('tbl_product_variation.active', 1)
    ->orderBy('tbl_product_variation.affiliation_id')
    ->select(DB::raw('tbl_brand.brand_slug, tbl_product.product_slug, tbl_product_variation.affiliation_id, tbl_affiliation.affiliation_slug, tbl_plan.plan_slug, tbl_contract.contract_slug'))
      ->first();

    return count($result) > 0 ? $result : null;
  }

  public function getPrepaidChipValue() {
    $category_id = \Config::get('filter.category_id');

    $result = DB::table('tbl_brand')
    ->join('tbl_product', 'tbl_brand.brand_id', '=', 'tbl_product.brand_id')
    ->join('tbl_product_variation', 'tbl_product.product_id', '=', 'tbl_product_variation.product_id')
    ->join('tbl_plan', 'tbl_plan.plan_id', '=', 'tbl_product_variation.plan_id')
    ->where('tbl_product.category_id', $category_id)
    ->where('tbl_plan.active', 1)
    ->where('tbl_product_variation.variation_type_id', 1)
    ->where('tbl_product_variation.active', 1)
    ->select(DB::raw('tbl_brand.brand_slug, tbl_product.product_slug, tbl_plan.plan_slug'))
      ->first();

    return count($result)> 0 ? $result : null;
  }

  public function productPostpaidBySlug($brand,$product,$affiliation,$plan,$contract,$color=null) {
    $result = DB::select('call PA_productPostpagoBySlug(
      :brand_slug,
      :product_slug,
      :affiliation_slug,
      :plan_slug,
      :contract_slug,
      :color_slug
    )', [
      'brand_slug' => $brand,
      'product_slug' => $product,
      'affiliation_slug' => $affiliation,
      'plan_slug' => $plan,
      'contract_slug' => $contract,
      'color_slug' => $color
    ]);

    return count($result) > 0 ? $result[0] : null;
  }

  public function productPostpagoByStock($stock_model_id,$product_variation_id) {
    $result = DB::select('call PA_productPostpagoByStock(
      :stock_model_id,
      :product_variation_id
    )', [
      'stock_model_id' => $stock_model_id,
      'product_variation_id' => $product_variation_id
    ]);

    return count($result) > 0 ? $result[0] : null;
  }

  public function productSearch($category_id=2, $product_brands='', $pag_total_by_page=20, $pag_actual=1, $sort_by="", $sort_direction="", $product_price_ini=0, $product_price_end=0, $product_string_search="", $product_ignore_ids="") {
    $products = DB::select('call PA_productSearch(
      :product_categories,
      :product_brands,
      :product_price_ini,
      :product_price_end,
      :product_string_search,
      :pag_total_by_page,
      :pag_actual,
      :sort_by,
      :sort_direction,
      :product_ignore_ids
    )', [
      'product_categories' => $category_id,
      'product_brands' => strval($product_brands),
      'product_price_ini' => $product_price_ini,
      'product_price_end' => $product_price_end,
      'product_string_search' => $product_string_search,
      'pag_total_by_page' => $pag_total_by_page,
      'pag_actual' => $pag_actual,
      'sort_by' => $sort_by,
      'sort_direction' => $sort_direction,
      'product_ignore_ids' => $product_ignore_ids
    ]);

    $total = DB::select('call PA_productCount(
      :product_categories,
      :product_brands,
      :product_price_ini,
      :product_price_end,
      :product_string_search,
      :product_ignore_ids
    )', [
      'product_categories' => $category_id,
      'product_brands' => strval($product_brands),
      'product_price_ini' => $product_price_ini,
      'product_price_end' => $product_price_end,
      'product_string_search' => $product_string_search,
      'product_ignore_ids' => $product_ignore_ids
    ]);

    return ['products' => $products, 'total' => $total[0]->total_products];
  }

  public function productBySlug($brand,$product,$color=null) {
    $result = DB::select('call PA_productBySlug(
      :brand_slug,
      :product_slug,
      :color_slug
    )', [
      'brand_slug' => $brand,
      'product_slug' => $product,
      'color_slug' => $color
    ]);

    return count($result) > 0 ? $result[0] : null;
  }

  public function productByStock($stock_model_id) {
    $result = DB::select('call PA_productByStock(
      :stock_model_id
    )', [
      'stock_model_id' => $stock_model_id
    ]);

    return count($result) > 0 ? $result[0] : null;
  }

  public function productDetail($product_id = null) {
    $result = DB::select('call PA_productDetail(
      :product_id
    )', [
      'product_id' => $product_id
    ]);
    return count($result) > 0 ? $result[0] : null;
  }

  public function productVariationDetail($product_variation_id = null) {

    $result = DB::select('call PA_productVariationDetail(
      :product_variation_id
    )', [
      'product_variation_id' => $product_variation_id
    ]);
    return count($result) > 0 ? $result[0] : null;
  }

  public function productImagesByStock($stock_model_id) {
    $stock_models = DB::select('call PA_productImagesByStock(
      :stock_model_id
    )', [
      'stock_model_id' => $stock_model_id
    ]);

    return $stock_models;
  }

  public function productStockModels($product_id, $color_required = 1) {
    $stock_models = DB::select('call PA_productStockModels(
      :product_id,
      :color_required
    )', [
      'product_id' => $product_id,
      'color_required' => $color_required
    ]);

    return $stock_models;
  }

  public function productSearchPromo($variation_type_id=null, $plan_pre_id=null, $plan_post_id=null, $affiliation_id=1, $contract_id=null, $product_brands='', $pag_total_by_page=20, $pag_actual=1, $sort_by="", $sort_direction="", $product_price_ini=0, $product_price_end=0, $product_string_search="") {
    $products = DB::select('call  PA_productSearchPromo(
      :variation_type_id,
      :plan_pre_id,
      :plan_post_id,
      :affiliation_id,
      :contract_id,
      :product_brands,
      :product_price_ini,
      :product_price_end,
      :product_string_search,
      :pag_total_by_page,
      :pag_actual,
      :sort_by,
      :sort_direction
    )', [
      'variation_type_id' => $variation_type_id,
      'plan_pre_id' => $plan_pre_id,
      'plan_post_id' => $plan_post_id,
      'affiliation_id' => $affiliation_id,
      'contract_id' => $contract_id,
      'product_brands' => strval($product_brands),
      'product_price_ini' => $product_price_ini,
      'product_price_end' => $product_price_end,
      'product_string_search' => $product_string_search,
      'pag_total_by_page' => $pag_total_by_page,
      'pag_actual' => $pag_actual,
      'sort_by' => $sort_by,
      'sort_direction' => $sort_direction,
    ]);

    $total = DB::select('call PA_productCountPromo(
      :variation_type_id,
      :plan_pre_id,
      :plan_post_id,
      :affiliation_id,
      :contract_id,
      :product_brands,
      :product_price_ini,
      :product_price_end,
      :product_string_search
    )', [
      'variation_type_id' => $variation_type_id,
      'plan_pre_id' => $plan_pre_id,
      'plan_post_id' => $plan_post_id,
      'affiliation_id' => $affiliation_id,
      'contract_id' => $contract_id,
      'product_brands' => strval($product_brands),
      'product_price_ini' => $product_price_ini,
      'product_price_end' => $product_price_end,
      'product_string_search' => $product_string_search
    ]);

    return ['products' => $products, 'total' => $total[0]->total_promos];
  }

  public function insertStoreOrder (
        $order_id ,
        $idtype_id ,
        $payment_method_id ,
        $branch_id ,
        $tracking_code ,
        $first_name ,
        $last_name = null,
        $id_number,
        $billing_district = null,
        $billing_phone = null,
        $source_operator = null,
        $porting_phone = null,
        $delivery_address ,
        $delivery_district ,
        $contact_email ,
        $contact_phone ,
        $service_type = null,
        $affiliation_type = null,
        $type_number_carry = null,
        $porting_request_id = null,
        $credit_status,
        $total,
        $total_igv,
        $terminos_condiciones,
        $idschedule_id,
        $source_id
  ) {    
    $result = DB::select('call PA_INS_storeOrder(
        :order_id,
        :idtype_id,
        :payment_method_id,
        :branch_id,
        :tracking_code,
        :first_name,
        :last_name,
        :id_number,
        :billing_district,
        :billing_phone,
        :source_operator,
        :porting_phone,
        :delivery_address,
        :delivery_district,
        :contact_email,
        :contact_phone,
        :service_type,
        :affiliation_type,
        :type_number_carry,
        :porting_request_id,
        :credit_status,
        :total,
        :total_igv,
        :terminos_condiciones,
        :idschedule_id,
        :source_id
    )', [
        'order_id' => $order_id,
        'idtype_id'=> $idtype_id,
        'payment_method_id' => $payment_method_id,
        'branch_id' => $branch_id,
        'tracking_code' => $tracking_code,
        'first_name'=> $first_name,
        'last_name'=> $last_name,
        'id_number' => $id_number,
        'billing_district' => $billing_district,
        'billing_phone' => $billing_phone,
        'source_operator' => $source_operator,
        'porting_phone' => $porting_phone,
        'delivery_address' => $delivery_address,
        'delivery_district' => $delivery_district,
        'contact_email' => $contact_email,
        'contact_phone' => $contact_phone,
        'service_type' => $service_type,
        'affiliation_type' => $affiliation_type,
        'type_number_carry' => $type_number_carry,
        'porting_request_id' => $porting_request_id,
        'credit_status' => $credit_status,
        'total' => $total,
        'total_igv' => $total_igv,
        'terminos_condiciones' => $terminos_condiciones,
        'idschedule_id' => $idschedule_id,
        'source_id' => $source_id
    ]);

    return 0;
  }

  public function getMaxStoreOrderID () {

    $result = DB::select('call PA_storeOrderMaxID()');

    return $result[0]->order_id;
  }

  public function getProductPlansChips($product) {
    $affiliation_id = \Config::get('filter.affiliation_id');
    $contract_id = \Config::get('filter.contract_id');
    
    $result = DB::table('tbl_product_variation')
      ->join('tbl_plan', 'tbl_product_variation.plan_id', '=', 'tbl_plan.plan_id')
      ->join('tbl_affiliation', 'tbl_affiliation.affiliation_id', '=', 'tbl_product_variation.affiliation_id')
      ->join('tbl_contract', 'tbl_contract.contract_id', '=', 'tbl_product_variation.contract_id')
      ->where('tbl_product_variation.variation_type_id', 2)
      ->where('tbl_product_variation.active', 1)
      ->where('tbl_plan.active', 1)
      ->where('tbl_affiliation.active', 1)
      ->where('tbl_contract.active', 1)
      ->where('tbl_product_variation.product_id', $product->product_id)
      /*->where(function ($query) use ($product, $affiliation_id, $contract_id) {
        $query
          ->where(function ($subquery) use ($product) {
            $subquery
              ->where('tbl_product_variation.affiliation_id', $product->affiliation_id)
              ->where('tbl_product_variation.contract_id', $product->contract_id);
          })
          ->orWhere(function ($subquery) use ($affiliation_id, $contract_id) {
            $subquery
              ->where('tbl_product_variation.affiliation_id', $affiliation_id)
              ->where('tbl_product_variation.contract_id', $contract_id);
          })
          ->orWhere(DB::raw('null'));
      })*/
      ->orderBy('tbl_plan.weight')
      ->orderBy('tbl_plan.plan_id')
      ->orderBy('tbl_plan.plan_price')
      ->select(DB::raw('tbl_plan.*, SUBSTRING(`plan_price`, 1, (POSITION("." IN `plan_price`) - 1)) AS plan_price_integer,
    SUBSTRING(`plan_price`, (POSITION("." IN `plan_price`) + 1), 2) AS plan_price_decimal,
    REVERSE(SUBSTRING(REVERSE(`plan_name`), POSITION(" " IN REVERSE(`plan_name`)) + 1, LENGTH(`plan_name`))) AS plan_name_name, tbl_affiliation.affiliation_id, tbl_affiliation.affiliation_slug, tbl_contract.contract_id, tbl_contract.contract_name, tbl_contract.contract_slug'))
      ->get();
    
    $unique = [];

    foreach ($result as $key => $plan) {
      if (!isset($unique[$plan->plan_id])) {
        $unique[$plan->plan_id] = $plan;
      } else {
        if (($unique[$plan->plan_id]->affiliation_id != $product->affiliation_id || $unique[$plan->plan_id]->contract_id != $product->contract_id) && (($plan->affiliation_id == $product->affiliation_id && $plan->contract_id == $product->contract_id) || ($plan->affiliation_id == $affiliation_id && $plan->contract_id == $contract_id))) {
          $unique[$plan->plan_id] = $plan;
        }
      }
    }

    foreach ($result as $key => $plan) {
      $unique[$plan->plan_id]->affiliations[] = $plan->affiliation_id;
    }

    return array_values($unique);
  }

  public function getProductContracts($product) {
    $affiliation_id = \Config::get('filter.affiliation_id');
    $plan_id = \Config::get('filter.plan_id');
    
    $result = DB::table('tbl_product_variation')
      ->join('tbl_plan', 'tbl_product_variation.plan_id', '=', 'tbl_plan.plan_id')
      ->join('tbl_affiliation', 'tbl_affiliation.affiliation_id', '=', 'tbl_product_variation.affiliation_id')
      ->join('tbl_contract', 'tbl_contract.contract_id', '=', 'tbl_product_variation.contract_id')
      ->where('tbl_product_variation.variation_type_id', 2)
      ->where('tbl_product_variation.active', 1)
      ->where('tbl_plan.active', 1)
      ->where('tbl_affiliation.active', 1)
      ->where('tbl_contract.active', 1)
      ->where('tbl_product_variation.product_id', $product->product_id)
      /*->where(function ($query) use ($product, $affiliation_id, $contract_id) {
        $query
          ->where(function ($subquery) use ($product) {
            $subquery
              ->where('tbl_product_variation.affiliation_id', $product->affiliation_id)
              ->where('tbl_product_variation.contract_id', $product->contract_id);
          })
          ->orWhere(function ($subquery) use ($affiliation_id, $contract_id) {
            $subquery
              ->where('tbl_product_variation.affiliation_id', $affiliation_id)
              ->where('tbl_product_variation.contract_id', $contract_id);
          })
          ->orWhere(DB::raw('null'));
      })*/
      ->orderBy('tbl_contract.weight')
      ->orderBy('tbl_contract.contract_id')
     // ->orderBy('tbl_contract.plan_price')
      ->select(DB::raw('tbl_contract.*, tbl_affiliation.affiliation_id, tbl_affiliation.affiliation_slug, tbl_plan.plan_id, tbl_plan.plan_slug, tbl_plan.plan_name'))
      ->get();
    
    $unique = [];

    foreach ($result as $key => $contract) {
      if (!isset($unique[$contract->contract_id])) {
        $unique[$contract->contract_id] = $contract;
      } else {
        if (($unique[$contract->contract_id]->affiliation_id != $product->affiliation_id || $unique[$contract->contract_id]->plan_id != $product->plan_id) && 
          (($contract->affiliation_id == $product->affiliation_id && $contract->plan_id == $product->plan_id) || 
           ($contract->affiliation_id == $affiliation_id && $contract->plan_id == $plan_id))) {
          $unique[$contract->contract_id] = $contract;
        }
      }
    }

    return array_values($unique);
  }

  public function getProductAffiliations($product) {
    $plan_id = \Config::get('filter.plan_post_id');
    $contract_id = \Config::get('filter.contract_id');
    
    $result = DB::table('tbl_product_variation')
      ->join('tbl_plan', 'tbl_product_variation.plan_id', '=', 'tbl_plan.plan_id')
      ->join('tbl_affiliation', 'tbl_affiliation.affiliation_id', '=', 'tbl_product_variation.affiliation_id')
      ->join('tbl_contract', 'tbl_contract.contract_id', '=', 'tbl_product_variation.contract_id')
      ->where('tbl_product_variation.variation_type_id', 2)
      ->where('tbl_product_variation.active', 1)
      ->where('tbl_plan.active', 1)
      ->where('tbl_affiliation.active', 1)
      ->where('tbl_contract.active', 1)
      ->where('tbl_product_variation.product_id', $product->product_id)
      ->where('tbl_product_variation.contract_id', $product->contract_id)
      /*->where(function ($query) use ($product, $plan_id, $contract_id) {
        $query
          ->where(function ($subquery) use ($product) {
            $subquery
              ->where('tbl_product_variation.plan_id', $product->plan_id)
              ->where('tbl_product_variation.contract_id', $product->contract_id);
          })
          ->orWhere(function ($subquery) use ($plan_id, $contract_id) {
            $subquery
              ->where('tbl_product_variation.plan_id', $plan_id)
              ->where('tbl_product_variation.contract_id', $contract_id);
          })
          ->orWhere(DB::raw('null'));
      })*/
      ->orderBy('tbl_affiliation.weight')
      ->orderBy('tbl_affiliation.affiliation_id')
      ->select(DB::raw('tbl_affiliation.*, tbl_plan.plan_id, tbl_plan.plan_slug, tbl_contract.contract_id, tbl_contract.contract_slug'))
      ->get();

    $unique = [];

    foreach ($result as $key => $affiliation) {
      if(!isset($unique[$affiliation->affiliation_id])) {
        $unique[$affiliation->affiliation_id] = $affiliation;
      } else {
        if(
          ($unique[$affiliation->affiliation_id]->plan_id != $product->plan_id || 
           $unique[$affiliation->affiliation_id]->contract_id != $product->contract_id) && 
           (
            ($affiliation->plan_id == $product->plan_id && 
             $affiliation->contract_id == $product->contract_id) ||
            ($affiliation->plan_id == $plan_id && 
             $affiliation->contract_id == $contract_id)
           )
         ) {
          $unique[$affiliation->affiliation_id] = $affiliation;
        }
      }
    }

    return array_values($unique);
  }

  public function getProductPlans($product) {
    $affiliation_id = \Config::get('filter.affiliation_id');
    $contract_id = \Config::get('filter.contract_id');
    
    $result = DB::table('tbl_product_variation')
      ->join('tbl_plan', 'tbl_product_variation.plan_id', '=', 'tbl_plan.plan_id')
      ->join('tbl_affiliation', 'tbl_affiliation.affiliation_id', '=', 'tbl_product_variation.affiliation_id')
      ->join('tbl_contract', 'tbl_contract.contract_id', '=', 'tbl_product_variation.contract_id')
      ->where('tbl_product_variation.variation_type_id', 2)
      ->where('tbl_product_variation.active', 1)
      ->where('tbl_plan.active', 1)
      ->where('tbl_affiliation.active', 1)
      ->where('tbl_contract.active', 1)
      ->where('tbl_product_variation.product_id', $product->product_id)
      ->where('tbl_product_variation.affiliation_id', $product->affiliation_id)
      ->where('tbl_product_variation.contract_id', $product->contract_id)
      /*->where(function ($query) use ($product, $affiliation_id, $contract_id) {
        $query
          ->where(function ($subquery) use ($product) {
            $subquery
              ->where('tbl_product_variation.affiliation_id', $product->affiliation_id)
              ->where('tbl_product_variation.contract_id', $product->contract_id);
          })
          ->orWhere(function ($subquery) use ($affiliation_id, $contract_id) {
            $subquery
              ->where('tbl_product_variation.affiliation_id', $affiliation_id)
              ->where('tbl_product_variation.contract_id', $contract_id);
          })
          ->orWhere(DB::raw('null'));
      })*/
      ->orderBy('tbl_plan.weight')
      ->orderBy('tbl_plan.plan_id')
      ->orderBy('tbl_plan.plan_price')
      ->select(DB::raw('tbl_plan.*, SUBSTRING(`plan_price`, 1, (POSITION("." IN `plan_price`) - 1)) AS plan_price_integer, SUBSTRING(`plan_price`, (POSITION("." IN `plan_price`) + 1), 2) AS plan_price_decimal, REVERSE(SUBSTRING(REVERSE(`plan_name`), POSITION(" " IN REVERSE(`plan_name`)) + 1, LENGTH(`plan_name`))) AS plan_name_name, tbl_affiliation.affiliation_id, tbl_affiliation.affiliation_slug, tbl_contract.contract_id, tbl_contract.contract_name, tbl_contract.contract_slug'))
      ->get();
    
    $unique = [];

    foreach ($result as $key => $plan) {
      if (!isset($unique[$plan->plan_id])) {
        $unique[$plan->plan_id] = $plan;
      } else {
        if (($unique[$plan->plan_id]->affiliation_id != $product->affiliation_id || 
             $unique[$plan->plan_id]->contract_id != $product->contract_id) && 
            (($plan->affiliation_id == $product->affiliation_id && $plan->contract_id == $product->contract_id) || 
             ($plan->affiliation_id == $affiliation_id && $plan->contract_id == $contract_id))) {
          $unique[$plan->plan_id] = $plan;
        }
      }
    }

    foreach ($result as $key => $plan) {
      $unique[$plan->plan_id]->affiliations[] = $plan->affiliation_id;
    }

    return array_values($unique);
  }

  public function getInfocomercialProductPlans($product_plans) {

   // extraer todos los planes de ese producto para usarlo en la busqueda de la informacion comercial de esos planes
    $i = 0;
    $plan_id = [];
    while($i < count($product_plans)){
        if (!empty($product_plans[$i]->plan_id)) {
          $plan_id[$i] = $product_plans[$i]->plan_id;
        }
        $i++;
    }

    // extraer toda la informacion comercial de los planes de ese productos
    $result = DB::table('tbl_plan_infocomercial')
      ->where('tbl_plan_infocomercial.active', 1)
      ->whereIn('tbl_plan_infocomercial.plan_id', $plan_id)
      ->orderBy('tbl_plan_infocomercial.plan_id')
      ->orderBy('tbl_plan_infocomercial.weight')
      ->select('tbl_plan_infocomercial.plan_id', 'tbl_plan_infocomercial.plan_infocomercial_img_url', 'tbl_plan_infocomercial.plan_infocomercial_descripcion', 'tbl_plan_infocomercial.plan_infocomercial_informacion_adicional', 'tbl_plan_infocomercial.plan_infocomercial_flag_cantidad','tbl_plan_infocomercial.weight','tbl_plan_infocomercial.tipo')
      ->get();
    
    // le agregamos la ruta donde estan las imagenes para que se puedan mostrar
    $i = 0;
    while($i < count($result)){
        if (!empty($result[$i]->plan_infocomercial_img_url)) {
          $result[$i]->plan_infocomercial_img_url = asset(Storage::url(($result[$i]->plan_infocomercial_img_url)));
        }
        $i++;
    }

    $unique = [];
    $i = 0;
    foreach ($result as $key => $plan) {
         $unique[$i] = $plan;
         $i++;
    }

    return array_values($unique);

  }

  public function statusHistory($order_id = null) {
    $result = DB::select('call PA_orderStatusHistory(
      :order_id
    )', [
      'order_id' => $order_id
    ]);

    return $result;
  }

  public function statusList() {
    $result = DB::table('tbl_order_status')->get();
    return $result;
  }

  // Pendiente >> Aceptado >> Programado >> En Envío >> Completado
  public function statusList_12356() {
    $result = DB::table('tbl_order_status')->whereIn('order_status_id', array(1,2,3,5,6))->orderBy('weight', 'asc')->get();
    return $result;
  }

  // Pendiente >> Aceptado >> Programado >> En Envío >> Cancelado
  public function statusList_12634() {
    $result = DB::table('tbl_order_status')->whereIn('order_status_id', array(1,2,6,3,4))->orderBy('weight', 'asc')->get();
    return $result;
  }

  // Pendiente >> No Contactado >> Cancelado
  public function statusList_174() {
    $result = DB::table('tbl_order_status')->whereIn('order_status_id', array(1,4,7))->orderBy('weight', 'asc')->get();
    return $result;
  }

  // Pendiente >> No Contactado >> Aceptado
  public function statusList_172() {
    $result = DB::table('tbl_order_status')->whereIn('order_status_id', array(1,2,7))->orderBy('weight2', 'asc')->get();
    return $result;
  }

  public function getBrands() {
    return DB::table('tbl_brand')
      ->select('brand_id', 'brand_name')
      ->where('active', 1)
      ->orderBy('weight')
      ->orderBy('brand_id')
      ->get();
  }

  public function getPlans($plan_type = null) {
    $query = DB::table('tbl_plan')
      ->where('active', 1)
      ->orderBy('weight')
      ->orderBy('plan_id');

    if (!empty($plan_type)) {
      $query->where('plan_type', $plan_type);
    }

    return $query->get();
  }

  public function getAffiliations() {
    return DB::table('tbl_affiliation')
      ->select('affiliation_id','affiliation_name','affiliation_slug')
      ->where('active', 1)
      ->orderBy('weight')
      ->orderBy('affiliation_id')
      ->get();
  }

  public function getContracts() {
    return DB::table('tbl_contract')
      ->select('contract_id','contract_name','contract_slug')
      ->where('active', 1)
      ->orderBy('weight')
      ->orderBy('contract_id')
      ->get();
  }

  public function getFiltersPostpaid() {
    $brand_list = $this->getBrands();
    $plan_list = $this->getPlans(2);
    $affiliation_list = $this->getAffiliations();
    $contract_list = $this->getContracts();
    return [
      'brand_list' => $brand_list,
      'plan_list' => $plan_list,
      'affiliation_list' => $affiliation_list,
      'contract_list' => $contract_list
    ];
  }

  public function getFiltersPrepaid() {
    $brand_list = $this->getBrands();
    $plan_list = $this->getPlans(1);
    return [
      'brand_list' => $brand_list,
      'plan_list' => $plan_list,
    ];
  }

  public function getFiltersProduct() {
    $brand_list = $this->getBrands();
    return [
      'brand_list' => $brand_list,
    ];
  }

  public function getFiltersPromo() {
    $brand_list = $this->getBrands();
    $contract_list = $this->getContracts();
    $affiliation_list = $this->getAffiliations();
    return [
      'brand_list' => $brand_list,
      'affiliation_list' => $affiliation_list,
      'contract_list' => $contract_list
    ];
  }

  public function orderItems($order_id) {
    $items = DB::select('call PA_orderItems(
      :order_id
    )', [
      'order_id' => $order_id
    ]);
    return $items;
  }

  public function planSlug($plan_id) {
    $slug = DB::select('call PA_planSlug(
      :plan_id
    )', [
      'plan_id' => $plan_id
    ]);
    return count($slug) > 0 ? $slug[0]->plan_slug : null;
  }

  public function affiliationSlug($affiliation_id) {
    $slug = DB::select('call PA_affiliationSlug(
      :affiliation_id
    )', [
      'affiliation_id' => $affiliation_id
    ]);
    return count($slug) > 0 ? $slug[0]->affiliation_slug : null;
  }

  public function contractSlug($contract_id) {
    $slug = DB::select('call PA_contractSlug(
      :contract_id
    )', [
      'contract_id' => $contract_id
    ]);
    return count($slug) > 0 ? $slug[0]->contract_slug : null;
  }

  public function districtsList() {
    $district_list = DB::select('call PA_districtList()');
    return count($district_list) > 0 ? $district_list : null;
  }

  public function branchByDistrict($district_id) {
    $branch = DB::select('call PA_branchByDistrict(:district_id)', ['district_id' => $district_id]);
    return count($branch) > 0 ? $branch[0]->branch_id : null;
  }

  public function operatorList() {
    return [
      //'30' => 'Convergia Perú S.A.',
      //'37' => 'Americatel Perú S.A.C',
      //'32' => 'Fijo - Telefónica del Perú S.A.A.',
      '20' => 'Entel Perú S.A',
      '21' => 'Claro, América Móvil S.A.C',
      '22' => 'Movistar, Telefónica Móviles S.A',
      //'24' => 'Viettel Peru S.A.C.',
      '25' => 'Virgin Mobile'
    ];
  }

  public static function setPreviousUrl($url) {
    Session::put('back_button', $url);
  }

  public static function getPreviousUrl() {
    return Session::get('back_button', null);
  }

  public function listImages($type) {
    $image_list = DB::table('tbl_image')
      ->where('tbl_image.image_type', $type)
      ->select('tbl_image.image_id', 'tbl_image.image_name', 'tbl_image.image_description', 'tbl_image.image_url', 'tbl_image.imagem_url', 'tbl_image.image_link', 'active')
      ->get();

    foreach ($image_list as $image) {
      $image->image_url = asset(Storage::url($image->image_url));
      $image->imagem_url = asset(Storage::url($image->imagem_url));  // CLES 23-02-2018
    }

    return $image_list;
  }

  public function getImage($image_id) {
    return DB::table('tbl_image')
      ->where('image_id', $image_id)
      ->first();
  }

  public function removeNamespaceFromXML( $xml ) {
    // Because I know all of the the namespaces that will possibly appear in 
    // in the XML string I can just hard code them and check for 
    // them to remove them
    $toRemove = ['S', 'ns2'];
    // This is part of a regex I will use to remove the namespace declaration from string
    $nameSpaceDefRegEx = '(\S+)=["\']?((?:.(?!["\']?\s+(?:\S+)=|[>"\']))+.)["\']?';

    // Cycle through each namespace and remove it from the XML string
   foreach( $toRemove as $remove ) {
      // First remove the namespace from the opening of the tag
      $xml = str_replace('<' . $remove . ':', '<', $xml);
      // Now remove the namespace from the closing of the tag
      $xml = str_replace('</' . $remove . ':', '</', $xml);
      // This XML uses the name space with CommentText, so remove that too
      $xml = str_replace($remove . ':commentText', 'commentText', $xml);
      // Complete the pattern for RegEx to remove this namespace declaration
      $pattern = "/xmlns:{$remove}{$nameSpaceDefRegEx}/";
      // Remove the actual namespace declaration using the Pattern
      $xml = preg_replace($pattern, '', $xml, 1);
    }

    // Return sanitized and cleaned up XML with no namespaces
    return $xml;
  }

  public function namespacedXMLToArray($xml) {
    // One function to both clean the XML string and return an array
    return json_decode(json_encode(simplexml_load_string($this->removeNamespaceFromXML($xml))), true);
  }

  public static function getSources() {    
    $result = DB::table('tbl_source')->get();
    return $result;
  }

}
