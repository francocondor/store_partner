<?php

namespace App\Http\Controllers\Api;

use App\OrderStatusHistory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class OrderStatusHistoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return OrderStatusHistory::get();
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $orderstatushistory = OrderStatusHistory::create($request->all());
        return response()->json($orderstatushistory, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\OrderStatusHistory  $orderStatusHistory
     * @return \Illuminate\Http\Response
     */    
    public function show(OrderStatusHistory $orderstatushistory)
    {
        return $orderstatushistory;                
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\OrderStatusHistory  $orderStatusHistory
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, OrderStatusHistory $orderstatushistory)
    {
        $orderstatushistory->update($request->all());
        return response()->json($orderstatushistory, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\OrderStatusHistory  $orderStatusHistory
     * @return \Illuminate\Http\Response
     */
    public function destroy(OrderStatusHistory $orderstatushistory)
    {
        $orderstatushistory->delete();
        return response()->json(null, 204);
    }
}
