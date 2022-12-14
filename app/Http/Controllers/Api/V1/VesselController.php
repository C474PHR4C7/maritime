<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreVesselRequest;
use App\Http\Requests\UpdateVesselRequest;
use App\Models\Vessel;
use App\Http\Resources\V1\VesselResource;
use App\Http\Resources\V1\VesselCollection;

class VesselController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return new VesselCollection(Vessel::paginate());
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
     * @param  \App\Http\Requests\StoreVesselRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreVesselRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Vessel  $vessel
     * @return \Illuminate\Http\Response
     */
    public function show(Vessel $vessel)
    {
        return new VesselResource($vessel);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Vessel  $vessel
     * @return \Illuminate\Http\Response
     */
    public function edit(Vessel $vessel)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateVesselRequest  $request
     * @param  \App\Models\Vessel  $vessel
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateVesselRequest $request, Vessel $vessel)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Vessel  $vessel
     * @return \Illuminate\Http\Response
     */
    public function destroy(Vessel $vessel)
    {
        //
    }
}
