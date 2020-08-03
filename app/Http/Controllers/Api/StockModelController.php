<?php

namespace App\Http\Controllers\Api;

use App\StockModel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class StockModelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return StockModel::get();        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $stockmodel = StockModel::create($request->all());
        return response()->json($stockmodel, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\StockModel  $stockModel
     * @return \Illuminate\Http\Response
     */
    public function show(StockModel $stockmodel)
    {
        return $stockmodel;        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\StockModel  $stockModel
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, StockModel $stockmodel)
    {
        $stockmodel->update($request->all());
        return response()->json($stockmodel, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\StockModel  $stockModel
     * @return \Illuminate\Http\Response
     */
    public function destroy(StockModel $stockmodel)
    {
        $stockmodel->delete();
        return response()->json(null, 204);
    }
}
