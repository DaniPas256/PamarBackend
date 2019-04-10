<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Galleries__Images extends Model 
{

    protected $table = 'Galleries__Images';
    public $timestamps = true;

    public function getFile()
    {
        return $this->belongsTo('Files', 'file_id');
    }

}