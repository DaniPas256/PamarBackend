<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class News extends Model 
{

    protected $table = 'News';
    public $timestamps = true;

    public function getGallery()
    {
        return $this->belongsTo('Galleries', 'gallery_id');
    }

    public function getFiles()
    {
        return $this->belongsTo('Files', 'file_id');
    }

}