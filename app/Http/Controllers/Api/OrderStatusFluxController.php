<?php

namespace App\Http\Controllers\Api;

use App\OrderStatusFlux;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class OrderStatusFluxController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return OrderStatusFlux::get();        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $orderstatusflux = OrderStatusFlux::create($request->all());
        return response()->json($orderstatusflux, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\OrderStatusFlux  $orderStatusFlux
     * @return \Illuminate\Http\Response
     */
    public function show(OrderStatusFlux $orderstatusflux)
    {
        return $orderstatusflux;                
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\OrderStatusFlux  $orderStatusFlux
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, OrderStatusFlux $orderstatusflux)
    {
        $orderstatusflux->update($request->all());
        return response()->json($orderstatusflux, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\OrderStatusFlux  $orderStatusFlux
     * @return \Illuminate\Http\Response
     */
    public function destroy(OrderStatusFlux $orderstatusflux)
    {
        $orderstatusflux->delete();
        return response()->json(null, 204);
    }
}
