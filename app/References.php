<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class References extends Model
{
    protected $table = 'project_references';
    public $timestamps = true;

    public function getGallery()
    {
        return $this->belongsTo('App\Galleries', 'gallery_id')->with('getImages');
    }
    
    public function getFile()
    {
        return $this->belongsTo('App\Files', 'file_id');
    }
}
