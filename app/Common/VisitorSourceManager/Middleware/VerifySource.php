<?php


namespace App\Common\VisitorSourceManager\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Http\Controllers\BaseController;

class VerifySource
{

    public function handle(Request $request, Closure $next) {  

        $minutos=43200;

        if(\Config::get('filter.source_cookie_minutes')!=0){
            $minutos=\Config::get('filter.source_cookie_minutes');
        }

        $sources_array= BaseController::getSources();                
        $parameters_array=$request->query();

        $response = $next($request);

        try {

            foreach ($parameters_array as $parameter_key => $parameter_value) {
                foreach ($sources_array as $source) {
                    if($source->key_word==$parameter_key){
                        if($source->value!=""){
                            if($source->value==$parameter_value){

                                $minutos = (int) $source->life_time * 24 * 60;

                                $response->cookie('source', $source->source_id, $minutos);
                            }
                        }else{

                            $response->cookie('source', $source->source_id, $minutos);

                        }
                    }
                }
            }
        } catch (\Exception $e) {

            \Log::info($e->getTraceAsString());

        }

        return $response;
    }
}
