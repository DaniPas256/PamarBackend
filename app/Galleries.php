<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Galleries extends Model 
{

    protected $table = 'Galleries';
    public $timestamps = true;

    public function getDescription()
    {
        return $this->hasOne('App\Galleries__Descriptions', 'gallery_id');
    }

    public function getImages()
    {
        return $this->hasMany('App\Galleries__Images', 'gallery_id')->with('getFile');
    }

}