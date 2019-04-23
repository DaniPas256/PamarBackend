<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ReferenceDescription extends Model
{
    protected $table = 'project_references_description';
    public $timestamps = true;
    protected $guarded = [];
}
