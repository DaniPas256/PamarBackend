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
                $response['references_slider'] = References::referenceJoin($lang)->where( [ [ 'show_on_slider', '=', '1' ] ])->with(['getFile'])->limit('5')->get();
                $response['references_tiles'] = References::referenceJoin($lang)->where( [ [ 'show_on_main', '=', '1' ] ])->with(['getFile'])->limit('8')->inRandomOrder()->get();
                $response['logos'] = Galleries::select('id')->where( 'special_id', 'index' )->with('getImages')->first();
                $response['news'] = News::newsJoin($lang)->where(  [ [ 'show_on_slider', '=', '1' ] ] )->with(['getFile'])->limit('3')->get();

                return Response::json( $response );
            break;
            case 'experiance':
                $response = [];
                $response['dict'] = $page_dict;
                $experiance = Experiances::where( 'translate_id',  $lang )->with( ['getGallery', 'getFiles', 'getItems'] )->orderbyRaw( ' category ASC, n_order ASC' )->get();
                
                $transform = [];
                $get_groups = [];

                foreach( $experiance as $row ){
                    $transform[ $row['category'] ][$row['experiance_group_id']][] = $row;
                    $get_groups[] = $row['experiance_group_id'];
                }

                $grp = \App\Experiances__Groups::whereIn( 'id', $get_groups )->get();
                $groups = [];
                foreach( $grp as $row ){
                    $groups[$row->id] = $row;
                }
                
                $response['groups'] = $groups;
                $response['experiance'] = $transform;

                return Response::json( $response );
            break;
            case 'references':
                $response = [];
                $response['dict'] = $page_dict;
                $response['references'] = References::referenceJoin($lang)->with(['getFile'])->get();
                $response['logos'] = Galleries::select('id')->where( 'special_id', 'references' )->with('getImages')->first();
                return Response::json( $response );
            break;
            case 'references_details':
                $response = [];
                $response['dict'] = $page_dict;
                $response['content'] =  References::referenceJoin($lang)->where( [ [ 'slug', '=', $page_id ] ] )->with(['getFile', 'getGallery'])->first();
                
                return Response::json( $response );
            break;
            case 'about':
                $response = [];
                $response['gallery'] = Galleries::select('id')->where( 'special_id', 'about' )->with('getImages')->first();
                $response['dict'] = $page_dict;
                return Response::json( $response );
            break;
            case 'news':
                $response = [];
                $response['dict'] = $page_dict;
                $response['content'] =  News::newsJoin($lang)->where( [ [ 'visible', '=', 1 ] ] )->with(['getFile', 'getGallery'])->orderby('news.id', 'DESC')->get();
 
                return Response::json( $response );
            break;
            case 'news_details':
                $response = [];
                $response['dict'] = $page_dict;
                $response['content'] = News::newsJoin($lang)->where( [ [ 'slug', '=', $page_id ], [ 'visible', '=', 1 ] ] )->with(['getFile', 'getGallery'])->first();
                
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
