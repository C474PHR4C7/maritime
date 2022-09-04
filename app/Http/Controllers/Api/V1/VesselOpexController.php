<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreVessel_opexRequest;
use App\Http\Requests\UpdateVessel_opexRequest;
use App\Http\Resources\V1\Vessel_OpexCollection;
use App\Models\Vessel_opex;

class VesselOpexController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return new Vessel_OpexCollection(Vessel_opex::paginate());
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
     * @param  \App\Http\Requests\StoreVessel_opexRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreVessel_opexRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Vessel_opex  $vessel_opex
     * @return \Illuminate\Http\Response
     */
    public function show(Vessel_opex $vessel_opex)
    {
        return new Vessel_opexResource($vessel_opex);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Vessel_opex  $vessel_opex
     * @return \Illuminate\Http\Response
     */
    public function edit(Vessel_opex $vessel_opex)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateVessel_opexRequest  $request
     * @param  \App\Models\Vessel_opex  $vessel_opex
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateVessel_opexRequest $request, Vessel_opex $vessel_opex)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Vessel_opex  $vessel_opex
     * @return \Illuminate\Http\Response
     */
    public function destroy(Vessel_opex $vessel_opex)
    {
        //
    }
}
