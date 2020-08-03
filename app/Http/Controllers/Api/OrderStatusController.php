<?php

namespace App\Http\Controllers\Api;

use App\OrderStatus;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class OrderStatusController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return OrderStatus::get();        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $orderstatus = OrderStatus::create($request->all());
        return response()->json($orderstatus, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\OrderStatus  $orderstatus
     * @return \Illuminate\Http\Response
     */
    public function show(OrderStatus $orderstatus)
    {
        return $orderstatus;                
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\OrderStatus  $orderstatus
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, OrderStatus $orderstatus)
    {
        $orderstatus->update($request->all());
        return response()->json($orderstatus, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\OrderStatus  $orderstatus
     * @return \Illuminate\Http\Response
     */
    public function destroy(OrderStatus $orderstatus)
    {
        $orderstatus->delete();
        return response()->json(null, 204);
    }
}
