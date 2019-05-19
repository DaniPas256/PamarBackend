<?php 

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\News;

class NewsController extends Controller 
{


    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $news = News::newsAdminJoin()->with(['getFile', 'getGallery'])->paginate(40);
        $news_data = [];
        foreach( $news as $row ){
            $news_data[$row->translate_id][] = $row;
        }

        return view('news.index', compact('news_data', 'news') );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        return view('news.create',[] );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(Request $request)
    {
        $data = \Input::all();
        unset( $data['_token'] );

        $create_obj = [];
        foreach( $data as $field_name => $array_value ){
            $slug = str_slug( $data['title']['1'], '-' ) . '-' . rand();
            foreach( $array_value as $translate_id => $value ){
                $create_obj[$translate_id][$field_name] = $value;
                $create_obj[$translate_id]['slug'] = $slug;

                try{
                    if( $field_name == 'file_id' ){
                        $exp = explode( 'userFiles/', $value );
                        $path_to = './backend/public/userFiles/' . $exp[1];
                        $file = \App\Files::where('path', $path_to )->first();
                        if( is_object($file) ){
                            $create_obj[$translate_id][$field_name] = $file->id;
                        } else {
                            $name = @end( explode( '/', $path_to ) );
                            $ext = @end( explode( '.', $name ) );
                            $f_id = \App\Files::insertGetId( [ 'name' => $name, 'extension' => $ext, 'path' => $path_to ] );
                            $create_obj[$translate_id][$field_name] = $f_id;
                        }
                    }
                } catch (\Throwable $th) {
                    $create_obj[$translate_id][$field_name] = 1;
                }
                if( $field_name == 'gallery_id' ){
                    $create_obj[$translate_id]['has_gallery'] = $value > 0 ? 1 : 0;
                    $create_obj[$translate_id]['gallery_id'] = $value > 0 ? $value : null;
                }
            }
        }

        $news = new News();
        $news->save();
        $news_id = $news->id;
        foreach( $create_obj as $translate_id => $create ){
            $create['news_id'] = $news_id;
            $create['translate_id'] = $translate_id;
            \App\NewsDescription::create( $create );
        }

        \Session::flash('message', 'Successfully created nerd!');
        return \Redirect::to( action('NewsController@index' ) );
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit( $news_id )
    {
        $news = News::newsAdminJoin()->where('news.id', $news_id )->with(['getFile', 'getGallery'])->get();
        $news_data = [];
        foreach( $news as $row ){
            $news_data[ $row->translate_id ] = $row;
        }

        return view('news.edit', compact('news', 'news_data', 'news_id') );
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id)
    {
        $data = \Input::all();
        unset( $data['_token'] );
        unset( $data['_method'] );
        
        $create_obj = [];
        foreach( $data as $field_name => $array_value ){
            foreach( $array_value as $translate_id => $value ){
                $create_obj[$translate_id][$field_name] = $value;

                if( $field_name == 'file_id' ){
                    try {
                        $exp = explode( 'userFiles/', $value );
                        $path_to = './backend/public/userFiles/' . $exp[1];
                        $file = \App\Files::where('path', $path_to )->first();
                        if( is_object($file) ){
                            $create_obj[$translate_id][$field_name] = $file->id;
                        } else {
                            $name = @end( explode( '/', $path_to ) );
                            $ext = @end( explode( '.', $name ) );
                            $f_id = \App\Files::insertGetId( [ 'name' => $name, 'extension' => $ext, 'path' => $path_to ] );
                            $create_obj[$translate_id][$field_name] = $f_id;
                        }
                    } catch (\Throwable $th) {
                        $create_obj[$translate_id][$field_name] = 1;
                    }
                }
                if( $field_name == 'gallery_id' ){
                    $create_obj[$translate_id]['has_gallery'] = $value > 0 ? 1 : 0;
                    $create_obj[$translate_id]['gallery_id'] = $value > 0 ? $value : null;
                }
            }
        }

        foreach( $create_obj as $translate_id => $update ){
            \App\NewsDescription::where( [['news_id', $id ], ['translate_id', $translate_id]] )->update( $update );
        }

        \Session::flash('message', 'Successfully created nerd!');
        return \Redirect::to( action('NewsController@index' ) );
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy( \App\News $news )
    {
        $news->delete();

        \Session::flash('message', 'Successfully created nerd!');
        return \Redirect::to( action('NewsController@index' ) );
    }
}

?>