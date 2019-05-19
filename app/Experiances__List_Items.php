<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Experiances__List_Items extends Model 
{

    protected $table = 'experiances__list_items';
    public $timestamps = true;
    protected $guarded = []; 

    public function getExperiance()
    {
        return $this->belongsTo('Experiances', 'experiance_id');
    }

}