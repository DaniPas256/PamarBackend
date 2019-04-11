<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Dictionaries;
use App\Pages;
use App\References;
use App\Galleries;
use App\Experiances;
use App\News;
use Response;

class PageContent extends Controller
{
    public function getDataForPage($page, $lang, $page_id = null)
    {
        $page_dict = $this->getDictForPage( $lang );
        switch ($page) {
            case 'global':
                return Response::json( $page_dict );
                break;
            case 'index':
                $response = [];
                $response['dict'] = $page_dict;
                $response['references_slider'] = References::where( [ [ 'translate_id', '=', $lang ], [ 'show_on_slider', '=', '1' ] ])->with(['getFile'])->limit('3')->get();
                $response['references_tiles'] = References::where( [ [ 'translate_id', '=', $lang ], [ 'show_on_main', '=', '1' ] ])->with(['getFile'])->limit('8')->get();
                $response['logos'] = Galleries::select('id')->where( 'special_id', 'index' )->with('getImages')->first();
                $response['news'] = News::where(  [ [ 'translate_id', '=', $lang ], [ 'show_on_slider', '=', '1' ] ] )->with(['getFiles'])->limit('3')->get();

                return Response::json( $response );
            break;
            case 'experiance':
                $response = [];
                $response['dict'] = $page_dict;
                $experiance = Experiances::where( 'translate_id',  $lang )->with( ['getGallery', 'getFiles', 'getItems'] )->orderbyRaw( ' category ASC, n_order ASC' )->get();
                
                $transform = [];
                foreach( $experiance as $row ){
                    $transform[ $row['category'] ][] = $row;
                }

                $response['experiance'] = $transform;

                return Response::json( $response );
            break;
            case 'references':
                $response = [];
                $response['dict'] = $page_dict;
                $response['references'] = References::where( [ [ 'translate_id', '=', $lang ], [ 'show_on_main', '=', '1' ] ])->with(['getFile'])->get();
                $response['logos'] = Galleries::select('id')->where( 'special_id', 'references' )->with('getImages')->first();
                return Response::json( $response );
            break;
            case 'references_details':
                $response = [];
                $response['dict'] = $page_dict;
                $response['content'] =  References::where( [ [ 'translate_id', '=', $lang ], [ 'slug', '=', $page_id ] ] )->with(['getFile', 'getGallery'])->first();
                
                return Response::json( $response );
            break;
            case 'about':
                $response = [];
                $response['dict'] = $page_dict;
                return Response::json( $response );
            break;
            case 'news':
                $response = [];
                $response['dict'] = $page_dict;
                return Response::json( $response );
            break;
            default:
                $response = [];
                $response['dict'] = $page_dict;
                return Response::json( $response );
            break;
        }
    }

    public function getDictForPage( $lang ){
        $content = Dictionaries::select(['key', 'value'])->where([
                   [ 
                       'translate_id',
                       '=',
                       $lang
                   ]
               ])->get();

        $mapped = $content->mapWithKeys(function ($item) {
            return [$item['key'] => $item['value']];
        });

        return $mapped;
    }
}
