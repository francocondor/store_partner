<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/* IT'S IN NGINX
Route::get('/plan',function(){
  return redirect('https://tienda.bitel.com.pe/postpago/Bitel/chip-bitel/portabilidad/flash-49_90/sin-contrato');
});
*/

/*20181212*/
   
Route::get('/postpago/Bitel/chip-bitel/portabilidad/ichip-plus-29_90',function(){
  return redirect('/plan');
});

Route::get('/postpago/Bitel/chip-bitel/portabilidad/ichip-plus-39_90',function(){
  return redirect('/plan');
});

Route::get('/postpago/Bitel/chip-bitel/portabilidad/ichip-plus-59_90',function(){
  return redirect('/plan');
});

Route::get('/postpago/Bitel/chip-bitel/portabilidad/ichip-plus-79_90',function(){
  return redirect('/plan');
});

Route::get('/postpago/Bitel/chip-bitel/portabilidad/ichip-plus-109_90',function(){
  return redirect('/plan');
});

Route::get('/postpago/Bitel/chip-bitel/portabilidad/ichip-plus-159_90',function(){
  return redirect('/plan');
});

Route::get('/postpago/huawei/mate-20-pro/portabilidad/ichip-plus-109_90', function(){
    return redirect('/postpago/huawei/mate-20-pro/portabilidad/ichip-plus-109_90/6-meses');
});

/*end 20181212*/

/*20181107*/
Route::get('/postpago/huawei/mate-20-pro/portabilidad/ichip-plus-159_90', function(){
    return redirect('https://tienda.bitel.com.pe/huawei_mate20pro');
});
/*END 20181107*/

/*20181116*/
Route::get('/postpago/Bitel/chip-bitel/portabilidad/ichip-29_90', function(){
    return redirect('https://tienda.bitel.com.pe/postpago/Bitel/chip-bitel/portabilidad/ichip-plus-29_90');
});
/*END 20181107*/

/*20190807*/
Route::get('/postpago/meizu/x8/portabilidad/ichip-plus-79_90/6-meses', function(){
    return redirect('/postpago/meizu/x8/portabilidad/ichip-plus-39_90/6-meses');
});
Route::get('/postpago/meizu/c9/portabilidad/iChip-plus-49_90/6-meses', function(){
    return redirect('/postpago/meizu/c9/portabilidad/ichip-plus-39_90/6-meses');
});
Route::get('/postpago/meizu/m6t/portabilidad/iChip-plus-49_90/6-meses', function(){
    return redirect('/postpago/meizu/m6t/portabilidad/ichip-plus-39_90/6-meses');
});
Route::get('/postpago/meizu/m6t-16-gb/portabilidad/iChip-plus-49_90/6-meses', function(){
    return redirect('/postpago/meizu/m6t-16-gb/portabilidad/ichip-plus-39_90/6-meses');
});
/*END 20190807*/

/**************20190307************/
Route::get('/prepago/huawei/p9/bifri-5' , function(){
    return redirect('/postpago');
});
Route::get('/prepago/huawei/p20pro/bifri-5' , function(){
    return redirect('/postpago');
});
Route::get('/postpago/huawei/p20pro/portabilidad/ichip-7990' , function(){
    return redirect('/postpago');
});
Route::get('/postpago/meizu/m6/portabilidad/ichip-99_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/huawei/p20pro/renovacion/ichip-129_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/meizu/m5c/renovacion/ichip-69_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/bitel/b9504/portabilidad/ichip-99_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/huawei/p10/portabilidad/ichip-39_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/bitel/b9504/renovacion/ichip-49_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/meizu/m6-note/renovacion/ichip-49_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/lenovo/vibe-b/renovacion/ichip-49_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/lg/stylus-3/portabilidad/ichip-69_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/huawei/p9-lite/renovacion/ichip-49_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/lenovo/vibe-b/portabilidad/ichip-69_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/meizu/m6-note/portabilidad/ichip-169_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/lg/g6-new/portabilidad/ichip-99_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/samsung/galaxy-s8/portabilidad/ichip-79_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/huawei/p20-mochila/portabilidad/ichip-5990', function(){
    return redirect('/postpago');
});
Route::get('/postpago/alcatel/a3-xl/renovacion/ichip-129_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/huawei/p10/portabilidad/ichip-plus-39_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/huawei/p20-mochila/portabilidad/ichip-plus-59_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/lg/k220/portabilidad/ichip-99_90/18-meses', function(){
    return redirect('/postpago');
});
Route::get('/postpago/huawei/p20-mochila/portabilidad/ichip-plus-79_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/samsung/galaxy-s8/portabilidad/ichip-plus-79_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/meizu/m6t/portabilidad/ichip-plus-59_90/black', function(){
    return redirect('/postpago');
});
Route::get('/postpago/huawei/y6-ii-compact/portabilidad/ichip-69_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/bitel/b9504/portabilidad/ichip-99_90/18-meses', function(){
    return redirect('/postpago');
});
Route::get('/postpago/huawei/p10/renovacion/ichip-149_90/18-meses', function(){
    return redirect('/postpago');
});
Route::get('/postpago/huawei/y6-ii-compact/portabilidad/ichip-3990', function(){
    return redirect('/postpago');
});
Route::get('/postpago/lg/k4-s/linea-nueva/ichip-129_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/samsung/j7-neo/portabilidad/ichip-plus-59_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/huawei/p9/portabilidad/ichip-149_90/18-meses', function(){
    return redirect('/postpago');
});
Route::get('/postpago/lg/k220-s/linea-nueva/ichip-129_90', function(){
    return redirect('/postpago');
});
Route::get('/postpago/samsung/s7/portabilidad/ichip-129_90/18-meses', function(){
    return redirect('/postpago');
});
Route::get('/postpago/huawei/y6-ii-compact/portabilidad/ichip-plus-39_90/6-meses', function(){
    return redirect('/postpago');
}); 
Route::get('/postpago/huawei/p8-lite/portabilidad/ichip-69_90/18-meses', function(){
    return redirect('/postpago');
}); 
Route::get('/postpago/huawei/p20pro-psmart/renovacion/ichip-129_90/18-meses', function(){
    return redirect('/postpago');
}); 
Route::get('/postpago/bitel/b9504/portabilidad/ichip-39_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/bitel/b9504/portabilidad/ichip-plus-39_90/6-meses');
});
Route::get('/postpago/meizu/m5c/portabilidad/ichip-29_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/meizu/m5c/portabilidad/ichip-plus-29_90/6-meses');
});
Route::get('/postpago/meizu/m5c/portabilidad/ichip-59_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/meizu/m5c/portabilidad/ichip-plus-59_90/6-meses');
});
Route::get('/postpago/bitel/b8416/portabilidad/ichip-49_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/bitel/b8416/portabilidad/ichip-plus-49_90/6-meses');
});
Route::get('/postpago/bitel/b8416/portabilidad/ichip-39_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/bitel/b8416/portabilidad/ichip-plus-39_90/6-meses');
});
Route::get('/postpago/meizu/m5c/portabilidad/ichip-5990',function(){
return redirect('https://tienda.bitel.com.pe/postpago/meizu/m5c/portabilidad/ichip-plus-59_90/6-meses');
});
Route::get('/postpago/samsung/s7/portabilidad/ichip-7990',function(){
return redirect('https://tienda.bitel.com.pe/postpago/samsung/s7/portabilidad/ichip-plus-79_90/6-meses');
});
Route::get('/postpago/lg/k4/portabilidad/ichip-129_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/lg/k4/portabilidad/ichip-plus-129_90/6-meses');
});
Route::get('/postpago/meizu/m6/portabilidad/ichip-59_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/meizu/m6/portabilidad/ichip-plus-59_90/6-meses');
});
Route::get('/postpago/lg/stylus-3/portabilidad/ichip-59_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/lg/stylus-3/portabilidad/ichip-plus-59_90/6-meses');
});
Route::get('/postpago/meizu/m6/portabilidad/ichip-29_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/meizu/m6/portabilidad/ichip-plus-29_90/6-meses');
});
Route::get('/postpago/bitel/b9504/portabilidad/ichip-29_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/bitel/b9504/portabilidad/ichip-plus-29_90/6-meses');
});
Route::get('/postpago/lg/stylus-3/portabilidad/ichip-79_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/lg/stylus-3/portabilidad/ichip-plus-79_90/6-meses');
});
Route::get('/postpago/samsung/s7/portabilidad/ichip-plus-159_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/samsung/s7/portabilidad/ichip-plus-159_90/6-meses');
});
Route::get('/postpago/lg/g6-new/portabilidad/ichip-7990',function(){
  return redirect('https://tienda.bitel.com.pe/postpago/lg/g6-new/portabilidad/ichip-plus-79_90/6-meses');
});
Route::get('/postpago/lg/stylus-3/portabilidad/ichip-29_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/meizu/m6-note/portabilidad/ichip-plus-39_90/6-meses');
});
Route::get('/postpago/meizu/m6-note/portabilidad/ichip-29_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/meizu/m6-note/portabilidad/ichip-plus-39_90/6-meses');
});
Route::get('/postpago/lg/g6-new/portabilidad/ichip-5990',function(){
return redirect('https://tienda.bitel.com.pe/postpago/lg/g6-new/portabilidad/ichip-plus-59_90/6-meses');
});
Route::get('/postpago/lenovo/vibe-b/portabilidad/ichip-5990',function(){
return redirect('https://tienda.bitel.com.pe/postpago/lenovo/vibe-b/portabilidad/ichip-plus-59_90/6-meses');
});
Route::get('/postpago/huawei/p9-lite/portabilidad/ichip-79_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/huawei/p9-lite/portabilidad/ichip-plus-79_90/6-meses');
});
Route::get('/postpago/lg/stylus-3/portabilidad/ichip-7990',function(){
return redirect('https://tienda.bitel.com.pe/postpago/lg/stylus-3/portabilidad/ichip-plus-79_90/6-meses');
});
Route::get('/postpago/huawei/y7-2018/portabilidad/ichip-79_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/huawei/y7-2018/portabilidad/ichip-plus-79_90');
});
Route::get('/postpago/huawei/y5-2018/portabilidad/ichip-29_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/huawei/y5-2018/portabilidad/ichip-plus-29_90/6-meses');
});
Route::get('/postpago/huawei/p9-lite/portabilidad/ichip-29_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/huawei/p9-lite/portabilidad/ichip-plus-39_90/6-meses');
});
Route::get('/postpago/bitel/b-pro/renovacion/ichip-29_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/bitel/b-pro/renovacion/ichip-plus-39_90/6-meses');
});
Route::get('/postpago/meizu/m6-note/portabilidad/ichip-39_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/meizu/m6-note/portabilidad/ichip-plus-39_90/6-meses');
});
Route::get('/postpago/meizu/m6-note/portabilidad/ichip-129_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/meizu/m6-note/portabilidad/ichip-plus-129_90/6-meses');
});
Route::get('/postpago/bitel/b-pro/portabilidad/ichip-59_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/bitel/b-pro/portabilidad/ichip-plus-59_90/6-meses');
});
Route::get('/postpago/lenovo/vibe-b/portabilidad/ichip-29_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/lenovo/vibe-b/portabilidad/ichip-plus-29_90');
});
Route::get('/postpago/alcatel/a3-xl/portabilidad/ichip-5990',function(){
return redirect('https://tienda.bitel.com.pe/postpago/alcatel/a3-xl/portabilidad/ichip-plus-59_90/6-meses');
});
Route::get('/postpago/lg/stylus-3/portabilidad/ichip-169_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/lg/stylus-3/portabilidad/ichip-plus-159_90/6-meses');
});
Route::get('/postpago/lenovo/vibe-b/portabilidad/ichip-7990',function(){
return redirect('https://tienda.bitel.com.pe/postpago/lenovo/vibe-b/portabilidad/ichip-plus-79_90/6-meses');
});
Route::get('/postpago/lenovo/vibe-b/portabilidad/ichip-59_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/lenovo/vibe-b/portabilidad/ichip-plus-59_90/6-meses');
});
Route::get('/postpago/huawei/p9-lite/linea-nueva/ichip-plus-99_90/6-meses',function(){
return redirect('https://tienda.bitel.com.pe/postpago/huawei/p9-lite/linea-nueva/ichip-plus-79_90/6-meses');
});
Route::get('/postpago/huawei/p9-lite/linea-nueva/ichip-129_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/huawei/p9-lite/linea-nueva/ichip-plus-129_90/6-meses');
});
Route::get('/postpago/bitel/b8416/portabilidad/ichip-69_90/18-meses',function(){
return redirect('https://tienda.bitel.com.pe/postpago/bitel/b8416/portabilidad/ichip-plus-59_90/6-meses');
});
Route::get('/postpago/lg/stylus-3/linea-nueva/ichip-49_90',function(){
return redirect('https://tienda.bitel.com.pe/postpago/lg/stylus-3/linea-nueva/ichip-plus-49_90/6-meses');
});
Route::get('/postpago/bitel/b8416/portabilidad/ichip-99_90/18-meses',function(){
return redirect('https://tienda.bitel.com.pe/postpago/bitel/b8416/portabilidad/ichip-plus-79_90/6-meses');
});
Route::get('/postpago/meizu/m6-note/portabilidad/ichip-99_90/18-meses',function(){
return redirect('https://tienda.bitel.com.pe/postpago/meizu/m6-note/portabilidad/ichip-plus-79_90/6-meses');
});
Route::get('/postpago/lenovo/vibe-b/portabilidad/ichip-99_90/18-meses',function(){
return redirect('https://tienda.bitel.com.pe/postpago/lenovo/vibe-b/portabilidad/ichip-plus-79_90/6-meses');
});
Route::get('/postpago/huawei/p9-lite/portabilidad/ichip-29_90/18-meses',function(){
return redirect('https://tienda.bitel.com.pe/postpago/huawei/p9-lite/portabilidad/ichip-plus-39_90/6-meses');
});
/*************20190312**********/

Route::get('/postpago/huawei/p-smart-2019/renovacion/ichip-plus-59_90/6-meses/black',function(){
return redirect('https://tienda.bitel.com.pe/postpago/huawei/p-smart-2019/portabilidad/iChip-plus-49_90/6-meses');
});


Route::get('/', 'HomeController@index')->name('home');

// RUTA PRODUCTO
Route::get('/producto/{brand}/{product}/{color?}', 'ProductController@show')
    ->where(
      [
        'brand' => '^([a-zA-Z0-9_-]+)$',
        'product' => '^([a-zA-Z0-9_-]+)$',
        'color' => '^([a-zA-Z0-9_-]+)$',
      ])
    ->name('product_detail');

// RUTAS PREPAGO
Route::get('/prepago', 'PrepaidController@index')->name('prepaid');

/**redirection xiaomi**/
Route::get('/prepago/xiaomi/redmi-7/{plan}/{color?}',function($plan,$color=0){
  $complemento="";
  if($color!=0)
    $complemento.="/".$color;
  return redirect("/prepago/xiaomi/redmi-7-64gb/".$plan.$complemento);
});
Route::get('/prepago/xiaomi/redmi-note-7/{plan}/{color?}',function($plan,$color=0){
  $complemento="";
  if($color!=0)
    $complemento.="/".$color;
  return redirect("/prepago/xiaomi/redmi-note-7-64gb/".$plan.$complemento);
});
/**end of redirection xiaomi**/

Route::get('/prepago/{brand}/{product}/{plan}/{color?}', 'PrepaidController@show')
    ->where(
      [
        'brand' => '^([a-zA-Z0-9_-]+)$',
        'product' => '^([a-zA-Z0-9_-]+)$',
        'plan' => '^([a-zA-Z0-9_-]+)$',
        'color' => '^([a-zA-Z0-9_-]+)$',
      ])
    ->name('prepaid_detail');

// RUTAS POSTPAGO
Route::get('/postpago', 'PostpaidController@index')->name('postpaid');

Route::get('/postpago/{brand}/{product}/{affiliation}/{plan}', 'PostpaidController@completeContractPostpago');

/**redirection xiaomi**/
Route::get('/postpago/xiaomi/redmi-7/{affiliation}/{plan}/{contract?}/{color?}',function($affiliation,$plan,$contract=0,$color=0){
  $complemento="";
  if($contract!=0)
    $complemento.="/".$contract;
  if($color!=0)
    $complemento.="/".$color;
  return redirect("/postpago/xiaomi/redmi-7-64gb/".$affiliation."/".$plan.$complemento);
});
Route::get('/postpago/xiaomi/redmi-note-7/{affiliation}/{plan}/{contract?}/{color?}',function($affiliation,$plan,$contract=0,$color=0){
  $complemento="";
  if($contract!=0)
    $complemento.="/".$contract;
  if($color!=0)
    $complemento.="/".$color;
  return redirect("/postpago/xiaomi/redmi-note-7-64gb/".$affiliation."/".$plan.$complemento);
});
/**end of special redirections**/

Route::get('/postpago/{brand}/{product}/{affiliation}/{plan}/{contract?}/{color?}', 'PostpaidController@show')
    ->where(
      [
        'brand' => '^([a-zA-Z0-9_-]+)$',
        'product' => '^([a-zA-Z0-9_-]+)$',
        'affiliation' => '^([a-zA-Z0-9_-]+)$',
        'plan' => '^([a-zA-Z0-9_-]+)$',
        'contract' => '^([a-zA-Z0-9_-]+)$',
        'color' => '^([a-zA-Z0-9_-]+)$',
      ])
    ->name('postpaid_detail');


// RUTAS ACCESORIOS
/*Route::get('/accesorios', 'AccessoriesController@index')->name('accessories');
Route::get('/accesorios/{brand}/{product}/{color?}', 'AccessoriesController@show')
    ->where(
      [
        'brand' => '^([a-zA-Z0-9_-]+)$',
        'product' => '^([a-zA-Z0-9_-]+)$',
        'color' => '^([a-zA-Z0-9_-]+)$',
      ])
    ->name('accessory_detail');*/

// RUTAS ACCESORIOS
Route::get('/promociones', 'PromoController@index')->name('promociones');

// RUTAS CHIP
Route::get('/chip', 'ChipController@index')->name('chip');

// RUTAS PLAN
Route::get('/plan', 'PlanController@index')->name('plan');

// RUTAS COMPARAR
Route::get('/prepago/comparar', 'PrepaidController@compare');
Route::get('/postpago/comparar', 'PostpaidController@compare');
Route::get('/producto/comparar', 'PostpaidController@compare');

// RUTAS CARRITO
Route::get('/carrito', 'CartController@showCart')->name('show_cart');
Route::post('/carrito', 'CartController@addToCart')->name('add_to_cart');
Route::post('/carrito/borrar', 'CartController@removeFromCart')->name('remove_from_cart');
Route::post('/carrito/actualizar', 'CartController@updateCart')->name('update_cart');
// Route::delete('/carrito/{product}', 'CartController@removeFromCart')->name('remove_from_cart');

// RUTAS ORDEN
Route::get('/envio', 'OrderController@createOrder')->name('create_order');
Route::get('/envio/currency', 'OrderController@show')->name('currency');
Route::post('/gracias', 'OrderController@storeOrder')->name('store_order');
Route::get('/pedido', 'OrderController@showOrder')->name('show_order');
Route::get('/trackeo/{order_id}', 'OrderController@trackOrder')->name('track_order');
Route::get('/renovacion_no_aplicable', 'OrderController@renovFail')->name('renov_fail');
Route::get('/cambiar_afiliacion', 'OrderController@changeAffil')->name('change_affil');
Route::get('/cambiar_afiliacion_a/{affiliation_id}', 'OrderController@changeAffilTo')->name('change_affil_to');
Route::get('/reintentar_envio_orden', 'OrderController@retryCreateOrder')->name('retry_create_order');

// ENLACES FOOTER
Route::get('/files/aviso', 'FileController@downloadFileAviso')->where(['filename'=>'[A-Za-z0-9/-]+'])->name('download_Aviso');
Route::get('/files/consideraciones', 'FileController@downloadFileConsideraciones')->name('download_Consideraciones');
Route::get('/files/terminos', 'FileController@downloadFileTerminos')->name('download_Terminos');
Route::get('/files/fichatecnica/{product_id}', 'FileController@downloadFileFichaTecnica')->name('download_FichaTecnica');
Route::get('/files/fichacomercial/{product_id}', 'FileController@downloadFileFichaComercial')->name('download_FichaComercial');

// RUTAS ARCHIVOS
Route::get('/files/{filename}', 'FileController@downloadFile')->where(['filename'=>'[A-Za-z0-9/-]+'])->name('download_file');

// RUTAS ARCHIVOS
Route::get('/files/{filename}', 'FileController@downloadFile')->where(['filename'=>'[A-Za-z0-9/-]+'])->name('download_file');

// MAIL
Route::get('/email/orden', function () {
  //$invoice = App\Invoice::find(1);
  return new App\Mail\OrderCompleted();
});

// LANDINGS
Route::get('/huawei_p20_pro', 'LandingController@huawei_p20_pro')->name('huawei_p20_pro');
Route::get('/huawei_p20', 'LandingController@huawei_p20')->name('huawei_p20');
Route::get('/meizu_m6t', 'LandingController@meizu_m6t')->name('meizu_m6t');
Route::get('/huawei_mate20pro', 'LandingController@mate')->name('mate'); 

Route::get('/huawei_p30', 'LandingController@huawei_p30')->name('huawei_p30');
Route::get('/huawei_p30', function () {
  return redirect('/postpago');
});
Route::get('/huawei_p30_pro', 'LandingController@huawei_p30_pro')->name('huawei_p30_pro');
Route::get('/promo_equipos_bitel', 'LandingController@bpro')->name('bpro');

Route::get('/promocion-renovacion', 'LandingController@promo_renova')->name('promo_renova');

// TEST
// Route::get('/carrito', 'CartController@index')->name('carrito');
// Route::get('/envio', 'CartController@index2')->name('envio');
Route::get('/finalizado', 'CartController@index3')->name('finalizado');
Route::get('/rastreo', 'TrackingController@index')->name('rastreo');

Route::get('/test_job', 'OrderController@testJob');
//Route::get('/borrar_session', 'OrderController@deleteSession');

/*Route::get('/maquetacion_renovacion/{mode}', function($mode) {
    return view('prueba', ['postpago' => $mode]);
});*/

/*Route::get('/test_job', function() {
  \App\Jobs\ProcessPorta::dispatch([
    'dni' => '45677136',
    'isdn' => '996800986'
  ])->onQueue('porta');
});*/

/*Route::get('/config_cache', function() {
  Artisan::call('config:cache');
  echo 'local config cache';
});*/
Route::post('/reservar_mate', 'LandingController@reservar_mate')->name('reservar_mate');

// ** Init Ruta Page Plan - Pedido realizado -->
Route::post('/pedidorealizado', 'PlanOrderController@storeOrderView')->name('store_order_plan');
Route::get('/pedidorealizado', 'PlanOrderController@storeOrderView');
// ** End Ruta Page Plan - Pedido realizado <--


// ** Init Ruta Page Plan/Options -->

Route::get('/flujorapidoplanes',function(){
  return redirect('/flujorapidoplanes/portabilidad');
});

// Route::get('/flujorapidoplanes/{name}',  'FlujoRapidoPlanController@index')->name('planflujorapido');
Route::get('/flujorapidoplanes/{name}',  'FlujoRapidoPlanController@index')->name('planflujorapido');

Route::get('/flujorapidoplanes/{name}/{plan_slug}',  'FlujoRapidoPlanController@index')->name('planflujorapido');

// ** End Ruta Page Plan/Options <--

// ** Init Ruta Page Arma tu Plan -->

Route::get('/flujorapidoarmatuplan/{name}/{plan_slug}',  'FlujoRapidoArmaTuPlanController@index')->name('planflujorapido');

// ** End Ruta Page  <--



// ** Init Ruta Page Equipos /Options -->

// Route::get('/flujorapidoequipos', 'FlujoRapidoEqidController@index')->name('flujorapidopeqid');

Route::get('/flujorapidoequipos',function(){
  return redirect('/');
});

// http://biteltienda.com/flujorapidoequipos/huawei/y7-2018/portabilidad/iChip-plus-49_90/6-meses
// http://biteltienda.com/prepago/huawei/p20/bifri-5

// Route::get('/flujorapidoequipos/{brand}/{product}/{affiliation}/{plan}', 'FlujoRapidoEqidController@completeContractFlujoRapidoEquipo');

Route::get('/flujorapidoequipos/{brand}/{product}/{affiliation}', 'FlujoRapidoEqidController@index')
->where(
  [
    'brand' => '^([a-zA-Z0-9_-]+)$',
    'product' => '^([a-zA-Z0-9_-]+)$',
    'affiliation' => '^([a-zA-Z0-9_-]+)$',
    'plan' => '^([a-zA-Z0-9_-]+)$',
    'contract' => '^([a-zA-Z0-9_-]+)$',
    'color' => '^([a-zA-Z0-9_-]+)$',
  ])
->name('flujorapidoequipos_detail');


// Route::get('/flujorapidoequipos/{brand}/{product}/{affiliation}/{plan}/{contract?}/{color?}', 'FlujoRapidoEqidController@index')
// ->where(
//   [
//     'brand' => '^([a-zA-Z0-9_-]+)$',
//     'product' => '^([a-zA-Z0-9_-]+)$',
//     'affiliation' => '^([a-zA-Z0-9_-]+)$',
//     'plan' => '^([a-zA-Z0-9_-]+)$',
//     'contract' => '^([a-zA-Z0-9_-]+)$',
//     'color' => '^([a-zA-Z0-9_-]+)$',
//   ])
// ->name('flujorapidoequipos_detail');

// Route::get('/flujorapidoequipos/{brand}/{product}/{plan}/{color?}', 'FlujoRapidoEqidController@index')
//     ->where(
//       [
//         'brand' => '^([a-zA-Z0-9_-]+)$',
//         'product' => '^([a-zA-Z0-9_-]+)$',
//         'plan' => '^([a-zA-Z0-9_-]+)$',
//         'color' => '^([a-zA-Z0-9_-]+)$',
//       ])
//     ->name('flujorapidoequiposPrepago_detail');


    // ** Init Ruta Page Plan - Pedido realizado -->
Route::post('/pedidorealizadodequipos', 'PlanOrderController@storeOrderViewEquipos')->name('store_order_plan_equipos');
Route::get('/pedidorealizadodequipos', 'PlanOrderController@storeOrderViewEquipos');
// ** End Ruta Page Plan - Pedido realizado <--




// Route::get('/flujorapidoequipos/{brand}/{product}/{plan}/{color?}', 'PrepaidController@show')
//     ->where(
//       [
//         'brand' => '^([a-zA-Z0-9_-]+)$',
//         'product' => '^([a-zA-Z0-9_-]+)$',
//         'plan' => '^([a-zA-Z0-9_-]+)$',
//         'color' => '^([a-zA-Z0-9_-]+)$',
//       ])
//     ->name('prepaid_detail');

// ** End Ruta Page Equipos /Options -->

// ** Init Route Arma tu plan -  -->

Route::get('/armatuplan', 'FlujoArmaTuPlanController@index')->name('flujoarmatuplan');

// ** End Route Arma tu plan -  <--