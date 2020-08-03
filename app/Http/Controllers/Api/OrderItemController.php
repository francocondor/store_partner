<?php

namespace App\Http\Controllers\Api;

use App\OrderItem;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class OrderItemController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {        
        return OrderItem::get();
    }   

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $orderitem= OrderItem::create($request->all());
        return response()->json($orderitem, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\OrderItem  $orderitem
     * @return \Illuminate\Http\Response
     */
    public function show(OrderItem $orderitem)
    {
        return $orderitem;        
    }   

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\OrderItem  $orderitem
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, OrderItem $orderitem)
    {
        $orderitem->update($request->all());
        return response()->json($orderitem, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\OrderItem  $orderitem
     * @return \Illuminate\Http\Response
     */
    public function destroy(OrderItem $orderitem)
    {
        $orderitem->delete();
        return response()->json(null, 204);
    }
}
