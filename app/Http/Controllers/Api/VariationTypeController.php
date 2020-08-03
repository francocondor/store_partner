<?php

namespace App\Http\Controllers\Api;

use App\VariationType;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class VariationTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return VariationType::get();        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $variationtype = VariationType::create($request->all());
        return response()->json($variationtype, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\VariationType  $variationType
     * @return \Illuminate\Http\Response
     */
    public function show(VariationType $variationtype)
    {
        return $variationtype;        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\VariationType  $variationType
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, VariationType $variationtype)
    {
        $variationtype->update($request->all());
        return response()->json($variationtype, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\VariationType  $variationType
     * @return \Illuminate\Http\Response
     */
    public function destroy(VariationType $variationtype)
    {
        $variationtype->delete();
        return response()->json(null, 204);
    }
}
