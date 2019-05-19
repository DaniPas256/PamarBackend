<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Galleries__Images extends Model 
{

    protected $table = 'galleries__images';
    public $timestamps = true;

    public function getFile()
    {
        return $this->belongsTo('App\Files', 'file_id');
    }

}