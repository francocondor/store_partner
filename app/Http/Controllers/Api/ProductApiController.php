<?php

namespace App\Http\Controllers\Api;

use App\ProductApi;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ProductApiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return ProductApi::get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $productapi = ProductApi::create($request->all());
        return response()->json($productapi, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ProductApi  $productApi
     * @return \Illuminate\Http\Response
     */
    public function show(ProductApi $productapi)
    {
        return $productapi;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ProductApi  $productApi
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ProductApi $productapi)
    {
        $productapi->update($request->all());
        return response()->json($productapi, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ProductApi  $productApi
     * @return \Illuminate\Http\Response
     */
    public function destroy(ProductApi $productapi)
    {
        $productapi->delete();
        return response()->json(null, 204);
    }
}
