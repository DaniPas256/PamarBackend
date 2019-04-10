<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Experiances extends Model 
{

    protected $table = 'Experiances';
    public $timestamps = true;

    public function getGallery()
    {
        return $this->belongsTo('Galleries', 'gallery_id');
    }

}