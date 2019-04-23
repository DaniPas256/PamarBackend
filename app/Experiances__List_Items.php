<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Experiances__List_Items extends Model 
{

    protected $table = 'Experiances__List_Items';
    public $timestamps = true;
    protected $guarded = []; 

    public function getExperiance()
    {
        return $this->belongsTo('Experiances', 'experiance_id');
    }

}