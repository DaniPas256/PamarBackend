<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class News extends Model 
{

    protected $table = 'news';
    public $timestamps = true;

    public function getGallery()
    {
        return $this->belongsTo('App\Galleries', 'gallery_id')->with('getImages');
    }

    public function getFile()
    {
        return $this->belongsTo('App\Files', 'file_id');
    }

    public static function newsJoin( $lang ){
        return self::select( [ 'news_description.*', 'news.id', 'news.created_at'] )->leftJoin( 'news_description', 'news.id', 'news_description.news_id')->where('news_description.translate_id', $lang );
    }

    public static function newsAdminJoin(){
        return self::select( [ 'news_description.*', 'news.id', 'news.created_at', 'news_description.id as child_id' ] )->leftJoin( 'news_description', 'news.id', 'news_description.news_id');
    }
}