<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Dictionaries;
use App\Pages;
use App\References;
use Response;

class PageContent extends Controller
{
    public function getDataForPage($page, $lang)
    {
        $page_dict = $this->getDictForPage( $lang );
        switch ($page) {
            case 'global':
                return Response::json( $page_dict );
                break;
            case 'index':
                $response = [];
                $response['dict'] = $page_dict;
                $response['references'] = References::where( [ [ 'translate_id', '=', $lang ], [ 'show_on_slider', '=', '1' ] ])->with(['getFile'])->limit('3')->get();
                $response['news'] = [];

                return Response::json( $response );
            break;
            case 'experiance':
                $response = [];
                $response['dict'] = $page_dict;
                return Response::json( $response );
            break;
            case 'references':
                $response = [];
                $response['dict'] = $page_dict;
                return Response::json( $response );
            break;
            case 'references_details':
                $response = [];
                $response['dict'] = $page_dict;
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
