<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Galleries extends Model 
{

    protected $table = 'Galleries';
    public $timestamps = true;

    public function getDescription()
    {
        return $this->hasOne('Galleries__Descriptions', 'gallery_id');
    }

    public function getImages()
    {
        return $this->hasMany('Galleries__Images', 'gallery_id');
    }

}