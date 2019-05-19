<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NewsDescription extends Model
{
    protected $table = 'news_description';
    public $timestamps = false;
    protected $guarded = [];
}
