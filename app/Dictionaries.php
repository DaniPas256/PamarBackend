<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Dictionaries extends Model 
{

    protected $table = 'dictionaries';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];

}