<?php

namespace App\Http\Controllers\Api;

use App\PlanInfocomercial;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PlanInfocomercialController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return PlanInfocomercial::get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $planinfocomercial = PlanInfocomercial::create($request->all());
        return response()->json($planinfocomercial, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\PlanInfocomercial  $planInfocomercial
     * @return \Illuminate\Http\Response
     */
    public function show(PlanInfocomercial $planinfocomercial)
    {
        return $planinfocomercial;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\PlanInfocomercial  $planInfocomercial
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, PlanInfocomercial $planinfocomercial)
    {
        $planinfocomercial->update($request->all());
        return response()->json($planinfocomercial, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\PlanInfocomercial  $planInfocomercial
     * @return \Illuminate\Http\Response
     */
    public function destroy(PlanInfocomercial $planinfocomercial)
    {
        $planinfocomercial->delete();
        return response()->json(null, 204);
    }
}
