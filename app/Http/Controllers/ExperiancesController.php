<?php 

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Experiances;

class ExperiancesController extends Controller 
{

  /**
   * Display a listing of the resource.
   *
   * @return Response
   */
  public function index()
  {
    $exp = Experiances::with(['getItems', 'getFiles', 'getGroup'])->paginate(40);
    $experiance = [];
    foreach( $exp as $row ){
        $experiance[$row->translate_id][] = $row;
    }
 
    return view('experiance.index', compact('experiance', 'exp') );
  }

  /**
   * Show the form for creating a new resource.
   *
   * @return Response
   */
  public function create()
  {
    $groups_db = \App\Experiances__Groups::get();
    $groups = [];

    foreach( $groups_db as $row ){
      $groups[$row->translate_id][$row->id] = $row->title;
    }

    $category = [ '1' => 'Wentylacja i oddymianie', '2' => 'Konstrukcje stalowe', '3' => 'Zabezpieczenia przeciwpożarowe ścian i sufitów', '4' => 'Zabezpieczenia dylatacji przeciwpożarowych', '5' => 'Zabezpieczenia przejść instalacyjnych' ];
   
    return view('experiance.create',compact('category', 'groups') );
  }

  /**
   * Store a newly created resource in storage.
   *
   * @return Response
   */
  public function store(Request $request)
  {
    $data = \Input::all();
    $items = isset( $data['item'] ) ? $data['item'] : [];

    unset( $data['_token'] );
    unset( $data['item'] );

    $create_obj = [];
    foreach( $data as $field_name => $array_value ){
        foreach( $array_value as $translate_id => $value ){
            $create_obj[$translate_id][$field_name] = $value;

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

    $uniq = uniqid();

    foreach( $create_obj as $translate_id => $create ){
        $create['translate_id'] = $translate_id;
        $create['n_order'] = 100;
        $create['parent_uniq'] = $uniq;
        
        $last_id = Experiances::insertGetId( $create );

        if( isset( $items[$translate_id] ) ){
          $bulk = [];
          foreach( $items[$translate_id] as $list_item ){
            $bulk[] = [
              'experiance_id' => $last_id,
              'text' => $list_item
            ];
          }
          \App\Experiances__List_Items::insert( $bulk );
        }
    }

    \Session::flash('message', 'Successfully created nerd!');
    return \Redirect::to( action('ExperiancesController@index' ) );    
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
  public function edit($parent_uniq)
  {
    $exp = Experiances::where('parent_uniq', $parent_uniq )->with(['getItems', 'getFiles', 'getGroup'])->get();
    $experiance_data = [];
    $items = [];
    foreach( $exp as $row ){
        if( !isset($items[$row->id]) ){
          $items[$row->id] = [];
        } 

        foreach( $row->getItems as $it ){
          $items[$row->id][] = $it['text'];
        }

        $experiance_data[ $row->translate_id ] = $row;
        $experiance_data[ $row->translate_id ]['items'] = $items;
    }
    $category = [ '1' => 'Wentylacja i oddymianie', '2' => 'Konstrukcje stalowe', '3' => 'Zabezpieczenia przeciwpożarowe ścian i sufitów', '4' => 'Zabezpieczenia dylatacji przeciwpożarowych', '5' => 'Zabezpieczenia przejść instalacyjnych' ];
    $groups_db = \App\Experiances__Groups::get();
    $groups = [];

    foreach( $groups_db as $row ){
      $groups[$row->translate_id][$row->id] = $row->title;
    }

    return view('experiance.edit', compact('experiance_data', 'parent_uniq', 'category', 'items', 'groups') );
  }

  /**
   * Update the specified resource in storage.
   *
   * @param  int  $parent_uniq
   * @return Response
   */
  public function update($parent_uniq)
  {
    $data = \Input::all();
    $items = isset( $data['item'] ) ? $data['item'] : [];

    unset( $data['_token'] );
    unset( $data['_method'] );
    unset( $data['item'] );

    $create_obj = [];
    foreach( $data as $field_name => $array_value ){
        foreach( $array_value as $translate_id => $value ){
            $create_obj[$translate_id][$field_name] = $value;

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

    foreach( $create_obj as $translate_id => $update ){
        Experiances::where( [[ 'parent_uniq', $parent_uniq], ['translate_id', $translate_id]] )->update( $update );
        $object = Experiances::where( [[ 'parent_uniq', $parent_uniq], ['translate_id', $translate_id]] )->first();
        \App\Experiances__List_Items::where( 'experiance_id', $object->id )->delete();
        
        if( isset( $items[$translate_id] ) ){
          $bulk = [];
          foreach( $items[$translate_id] as $list_item ){
            $bulk[] = [
              'experiance_id' => $object->id,
              'text' => $list_item
            ];
          }
          \App\Experiances__List_Items::insert( $bulk );
        }
    }

    \Session::flash('message', 'Successfully created nerd!');
    return \Redirect::to( action('ExperiancesController@index' ) );     
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return Response
   */
  public function destroy($parent_uniq)
  {
    Experiances::where( 'parent_uniq', $parent_uniq )->delete();

    \Session::flash('message', 'Successfully created nerd!');
    return \Redirect::to( action('ExperiancesController@index' ) );   
  }
  
}

?>