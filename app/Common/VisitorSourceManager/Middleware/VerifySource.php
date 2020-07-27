<?php


namespace App\Common\VisitorSourceManager\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Http\Controllers\BaseController;

class VerifySource
{

    public function handle(Request $request, Closure $next) {  
        // $source_id2 = $request->cookie('source2');
        // var_dump($source_id2);
        $minutos=43200;
        if(\Config::get('filter.source_cookie_minutes')!=0){
            $minutos=\Config::get('filter.source_cookie_minutes');
        }
        //var_dump($minutos);
        $days = 30;
        $sources_array= BaseController::getSources();                
        $parameters_array=$request->query();
        $response = $next($request);
        foreach ($parameters_array as $parameter_key => $parameter_value) {            
            foreach ($sources_array as $source) {                
                if($source->key_word==$parameter_key){
                    if($source->value!=""){
                        if($source->value==$parameter_value){
                            //$response->cookie('source', $source->source_id, $days * 60 * 1440);
                            $response->cookie('source', $source->source_id, $minutos);
                        }
                    }else{
                        //$response->cookie('source', $source->source_id, $days * 60 * 1440);
                        $response->cookie('source', $source->source_id, $minutos);
                    }
                }                
            }


            // if(strpos($request->path(), $val->key_word) !== false){
            //     if($val->value==){}
            //     }else{

            //     }
            //     $source=$val->source_id;
            //     $response->cookie('source', $source, $days * 60 * 1440);
            // }
        }
        // var_dump($request->query());
        // var_dump("aaaaaaaaaaaaa");
        // var_dump(array_keys($parameters_array)[0]."=".array_values($parameters_array)[0]);
        return $response;
    }
}
