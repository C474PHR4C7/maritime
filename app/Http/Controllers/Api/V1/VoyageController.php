<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreVoyageRequest;
use App\Http\Requests\UpdateVoyageRequest;
use App\Http\Resources\V1\VoyageCollection;
use App\Models\Voyage;

class VoyageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()

    {
        return new VoyageCollection(Voyage::paginate());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreVoyageRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreVoyageRequest $request)
    {
        $voyage=Voyage::create($request->all());
        return $voyage;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Voyage  $voyage
     * @return \Illuminate\Http\Response
     */
    public function show(Voyage $voyage)
    {
        return new VoyageResource($voyage);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Voyage  $voyage
     * @return \Illuminate\Http\Response
     */
    public function edit(Voyage $voyage)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateVoyageRequest  $request
     * @param  \App\Models\Voyage  $voyage
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateVoyageRequest $request, Voyage $voyage)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Voyage  $voyage
     * @return \Illuminate\Http\Response
     */
    public function destroy(Voyage $voyage)
    {
        //
    }
}
