<?php

namespace App\Http\Controllers\Api;

use App\Idtype;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class IdtypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Idtype::get();        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $idtype = Idtype::create($request->all());
        return response()->json($idtype, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Idtype  $idtype
     * @return \Illuminate\Http\Response
     */
    public function show(Idtype $idtype)
    {
        return $idtype;        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Idtype  $idtype
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Idtype $idtype)
    {
        $idtype->update($request->all());
        return response()->json($idtype, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Idtype  $idtype
     * @return \Illuminate\Http\Response
     */
    public function destroy(Idtype $idtype)
    {
        $idtype->delete();
        return response()->json(null, 204);
    }
}
