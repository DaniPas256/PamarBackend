<?php 

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Dictionaries;

class DictionariesController extends Controller 
{

  /**
   * Display a listing of the resource.
   *
   * @return Response
   */
  public function index()
  {
    $dict = Dictionaries::get();
    $dictionary = [];
    foreach( $dict as $row ){
        $dictionary[$row->translate_id][] = $row;
    }
 
    return view('dictionary.index', compact('dictionary', 'dict') );
  }

  /**
   * Show the form for creating a new resource.
   *
   * @return Response
   */
  public function create()
  {
    
  }

  /**
   * Store a newly created resource in storage.
   *
   * @return Response
   */
  public function store(Request $request)
  {
    
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
  public function edit($id)
  {
    $data = Dictionaries::where('id', $id )->first();
    $data = Dictionaries::where('key', $data['key'] )->get();
    $dict = [];

    foreach( $data as $row ){
        $dict[ $row->translate_id ] = $row;
    }

    return view('dictionary.edit', compact('id', 'dict') );   
  }

  /**
   * Update the specified resource in storage.
   *
   * @param  int  $id
   * @return Response
   */
  public function update( \App\Dictionaries $dict )
  {
    $data = \Input::all();

    unset( $data['_token'] );
    unset( $data['_method'] );

    $create_obj = [];
    foreach( $data as $field_name => $array_value ){
        foreach( $array_value as $translate_id => $value ){
            $create_obj[$translate_id][$field_name] = $value;
        }
    }

    foreach( $create_obj as $translate_id => $update ){
      Dictionaries::where( [ [ 'key', $dict->key ], ['translate_id', $translate_id]] )->update( $update );
    }

    \Session::flash('message', 'Successfully created nerd!');
    return \Redirect::to( action('DictionariesController@index' ) );    
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return Response
   */
  public function destroy($id)
  {
    
  }
  
}

?>