<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Pages extends Model 
{

    protected $table = 'Pages';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];

    public function getDictionaries()
    {
        return $this->hasMany('Dictionaries', 'page_id');
    }

}