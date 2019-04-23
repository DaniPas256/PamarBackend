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

    public static function referenceJoin( $lang ){
        return self::select( [ 'project_references_description.*', 'project_references.id', 'project_references.created_at'] )->leftJoin( 'project_references_description', 'project_references.id', 'project_references_description.reference_id')->where('project_references_description.translate_id', $lang );
    }

    public static function referenceAdminJoin(){
        return self::select( [ 'project_references_description.*', 'project_references.id', 'project_references.created_at', 'project_references_description.id as child_id' ] )->leftJoin( 'project_references_description', 'project_references.id', 'project_references_description.reference_id');
    }

    
}
