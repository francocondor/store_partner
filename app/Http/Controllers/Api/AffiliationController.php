<?php

namespace App\Http\Controllers\Api;

use App\Affiliation;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AffiliationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {        
        return Affiliation::get();
    }   

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $affiliation = Affiliation::create($request->all());
        return response()->json($affiliation, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Affiliation  $affiliation
     * @return \Illuminate\Http\Response
     */
    public function show(Affiliation $affiliation)
    {
        return $affiliation;
    }   

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Affiliation  $affiliation
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Affiliation $affiliation)
    {
        $affiliation->update($request->all());
        return response()->json($affiliation, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Affiliation  $affiliation
     * @return \Illuminate\Http\Response
     */
    public function destroy(Affiliation $affiliation)
    {
        $affiliation->delete();
        return response()->json(null, 204);
    }
}
