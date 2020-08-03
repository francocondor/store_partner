<?php

namespace App\Http\Controllers\Api;

use App\SentinelCheck;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SentinelCheckController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return SentinelCheck::get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {        
        $sentinelcheck = SentinelCheck::create($request->all());
        return response()->json($sentinelcheck, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\SentinelCheck  $sentinelCheck
     * @return \Illuminate\Http\Response
     */
    public function show(SentinelCheck $sentinelcheck)
    {
        return $sentinelcheck;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\SentinelCheck  $sentinelCheck
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, SentinelCheck $sentinelcheck)
    {
        $sentinelcheck->update($request->all());
        return response()->json($sentinelcheck, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\SentinelCheck  $sentinelCheck
     * @return \Illuminate\Http\Response
     */
    public function destroy(SentinelCheck $sentinelcheck)
    {
        $sentinelcheck->delete();
        return response()->json(null, 204);
    }
}
