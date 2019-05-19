<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Experiances extends Model 
{

    protected $table = 'experiances';
    public $timestamps = true;

    public function getGallery()
    {
        return $this->belongsTo('App\Galleries', 'gallery_id')->with('getImages');
    }
    
    public function getFiles()
    {
        return $this->belongsTo('App\Files', 'file_id');
    }

    public function getItems()
    {
        return $this->hasMany('App\Experiances__List_Items', 'experiance_id');
    }

    public function getGroup()
    {
        return $this->belongsTo('App\Experiances__Groups', 'experiance_group_id');
    }
}