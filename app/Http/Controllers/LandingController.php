<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class LandingController extends Controller
{
  public function huawei_p20_pro (Request $request) {
    return view('landings.huawei_p20_pro');
  }
  public function huawei_p20 (Request $request) {
    return view('landings.huawei_p20');
  }
  public function meizu_m6t (Request $request) {
    return view('landings.meizu_m6t');
  }
  public function mate (Request $request) {
    return view('landings.mate');
  }
  public function reservar_mate (Request $request) {
    $nombre=$request->input('nombre');
    $dni=$request->input('dni');
    $email=$request->input('email');
    $telefono=$request->input('telefono');
    $tag=$request->input('tag');

    $results = DB::select( DB::raw("SELECT * FROM reservar WHERE dni = '$dni' and product_code = '$tag'") );
    
    if(count($results)<=0){
      DB::statement('insert into reservar (name,dni,correo,telefono,product_code) values ("'.$nombre.'","'.$dni.'","'.$email.'","'.$telefono.'","'.$tag.'")');
      return json_encode(1);
    }
    if(count($results)>0){
      return json_encode(2);
    }
  }
  public function huawei_p30 (Request $request) {
    return view('landings.huawei_p30');
  }
  public function huawei_p30_pro (Request $request) {
    return view('landings.huawei_p30_pro');
  }
  public function bpro (Request $request) {
    return view('landings.bpro');
  }
  public function promo_renova (Request $request) {
    return view('landings.promo_renova');
  }
}