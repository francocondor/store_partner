<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//RUTAS BUSQUEDA
Route::get('/prepago/buscar', 'Api\SearchController@searchPrepaid');
Route::get('/postpago/buscar', 'Api\SearchController@searchPostpaid');
Route::get('/accesorios/buscar', 'Api\SearchController@searchAccesorios');
Route::get('/promociones/buscar', 'Api\SearchController@searchPromos');

Route::get('/postpago/{brand}/{product}/{affiliation}/{plan}/{contract?}/{color?}', 'Api\PostpaidController@show')
    ->where(
      [
        'brand' => '^([a-zA-Z0-9_-]+)$',
        'product' => '^([a-zA-Z0-9_-]+)$',
        'affiliation' => '^([a-zA-Z0-9_-]+)$',
        'plan' => '^([a-zA-Z0-9_-]+)$',
        'contract' => '^([a-zA-Z0-9_-]+)$',
        'color' => '^([a-zA-Z0-9_-]+)$',
      ])
    ->name('api_postpaid_detail');

Route::get('/prepago/{brand}/{product}/{plan}/{color?}', 'Api\PrepaidController@show')
    ->where(
      [
        'brand' => '^([a-zA-Z0-9_-]+)$',
        'product' => '^([a-zA-Z0-9_-]+)$',
        'plan' => '^([a-zA-Z0-9_-]+)$',
        'color' => '^([a-zA-Z0-9_-]+)$',
      ])
    ->name('api_prepaid_detail');

Route::get('/prueba', 'Api\ProductController@show1');
Route::get('/accesorios/{brand}/{product}/{color?}', 'Api\ProductController@show')
    ->where(
      [
        'brand' => '^([a-zA-Z0-9_-]+)$',
        'product' => '^([a-zA-Z0-9_-]+)$',
        'color' => '^([a-zA-Z0-9_-]+)$',
      ])
    ->name('api_accessory_detail');

Route::post('check_porting_status/{order_id}', 'Api\PortingController@handle');

Route::post('test/{param}', 'Api\PortingController@test');

Route::get('/carrito/check_credit_status', 'Api\CartController@checkCreditStatus');

// ** Init Ruta Api Page Equipos/Plan -->

Route::get('/flujorapidoequipos/{brand}/{product}/{affiliation}/{plan}/{contract?}/{color?}', 'Api\FlujoRapidoEquiposController@show')
    ->where(
      [
        'brand' => '^([a-zA-Z0-9_-]+)$',
        'product' => '^([a-zA-Z0-9_-]+)$',
        'affiliation' => '^([a-zA-Z0-9_-]+)$',
        'plan' => '^([a-zA-Z0-9_-]+)$',
        'contract' => '^([a-zA-Z0-9_-]+)$',
        'color' => '^([a-zA-Z0-9_-]+)$',
      ])
    ->name('api_flujorapidoequipos_detail');

// ** END Ruta Api Page Equipos/Plan -->

// ** Init Ruta Api Page Arma tu plan -->

Route::get('/armatuplan/{contactos}/{megas}', 'Api\FlujoRapidoArmaTuPlanController@show')
    ->where(
      [
        'contactos' => '^([a-zA-Z0-9_-]+)$',
        'megas' => '^([a-zA-Z0-9_-]+)$',
      ])
    ->name('api_flujoarmatuplan_detail');

// ** END Ruta Api Page Arma tu plan -->


//RUTAS API NORMAL
// Route::apiresource('affiliations','Api\AffiliationController');
// Route::apiresource('branches','Api\BranchController');
// Route::apiresource('brands','Api\BrandController');
// Route::apiresource('categories','Api\CategoryController');
// Route::apiresource('colors','Api\ColorController');
// Route::apiresource('contracts','Api\ContractController');
// Route::apiresource('departments','Api\DepartmentController');
// Route::apiresource('districts','Api\DistrictController');
// Route::apiresource('idtypes','Api\IdtypeController');
// Route::apiresource('images','Api\ImageController');
// Route::apiresource('orders','Api\OrderController');
// Route::apiresource('orderitems','Api\OrderItemController');
// Route::apiresource('orderstatuses','Api\OrderStatusController');
// Route::apiresource('orderstatusfluxes','Api\OrderStatusFluxController');
// Route::apiresource('orderstatushistories','Api\OrderStatusHistoryController');
// Route::apiresource('paymentmethods','Api\PaymentMethodController');
// Route::apiresource('plans','Api\PlanController');
// Route::apiresource('planinfocomercials','Api\PlanInfocomercialController');
// Route::apiresource('productapis','Api\ProductApiController');
// Route::apiresource('productimages','Api\ProductImageController');
// Route::apiresource('productvariations','Api\ProductVariationController');
// Route::apiresource('promos','Api\PromoController');
// Route::apiresource('provinces','Api\ProvinceController');
// Route::apiresource('schedules','Api\ScheduleController');
// Route::apiresource('sentinelchecks','Api\SentinelCheckController');
// Route::apiresource('stockmodels','Api\StockModelController');
// Route::apiresource('stores','Api\StoreController');
// Route::apiresource('userapis','Api\UserApiController');
// Route::apiresource('variationtypes','Api\VariationTypeController');

// //RUTAS API PERSONALIZADAS
// Route::get('/postpago/buscarApi', 'Api\SearchController@searchApiPostpaid');
// Route::get('/prepago/buscarApi', 'Api\SearchController@searchApiPrepaid');
// Route::get('/promociones/buscarApi', 'Api\SearchController@searchApiPromos');
// Route::get('/planApi', 'PlanController@IndexApi');
// Route::get('/chipApi', 'ChipController@IndexApi');