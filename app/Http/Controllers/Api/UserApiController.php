<?php

namespace App\Http\Controllers\Api;

use App\UserApi;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class UserApiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return UserApi::get();        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $userapi = UserApi::create($request->all());
        return response()->json($userapi, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\UserApi  $userApi
     * @return \Illuminate\Http\Response
     */
    public function show(UserApi $userapi)
    {
        return $userapi;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\UserApi  $userApi
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, UserApi $userapi)
    {
        $userapi->update($request->all());
        return response()->json($userapi, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\UserApi  $userApi
     * @return \Illuminate\Http\Response
     */
    public function destroy(UserApi $userapi)
    {
        $userapi->delete();
        return response()->json(null, 204);
    }
}
