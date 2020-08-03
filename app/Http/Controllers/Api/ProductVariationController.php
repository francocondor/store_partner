<?php

namespace App\Http\Controllers\Api;

use App\ProductVariation;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ProductVariationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return ProductVariation::get();        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $productvariation = ProductVariation::create($request->all());
        return response()->json($productvariation, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ProductVariation  $productVariation
     * @return \Illuminate\Http\Response
     */
    public function show(ProductVariation $productvariation)
    {
        return $productvariation;        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ProductVariation  $productVariation
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ProductVariation $productvariation)
    {
        $productvariation->update($request->all());
        return response()->json($productvariation, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ProductVariation  $productVariation
     * @return \Illuminate\Http\Response
     */
    public function destroy(ProductVariation $productvariation)
    {
        $productvariation->delete();
        return response()->json(null, 204);
    }
}
