<?php

namespace App\Http\Resources\V1;

use Illuminate\Http\Resources\Json\JsonResource;

class VoyageResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id'=>$this->id,
            'vessel_id'=>$this->vessel_id,
            'voy_start'=>$this->voy_start,
            'voy_end'=>$this->voy_end,
            'status'=>$this->status,
            'revenues'=>$this->revenues,
            'expenses'=>$this->expenses,
            'profit'=>$this->profit,


        ];
    }
}
