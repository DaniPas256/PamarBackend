<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ExperiancesGroupsController extends Controller
{
    public function index(){
        $grp = \App\Experiances__Groups::paginate(20);
        $groups = [];

        foreach( $grp as $row ){
            $groups[$row->translate_id][] = $row;
        }

        return view('groups.index', compact( 'groups', 'grp' ) );
    }

    public function create(){
        return view('groups.create', []);
    }

    public function store(){
        $data = \Input::all();
        $parent_uniq = uniqid();

        unset( $data['_token'] );
    
        $create_obj = [];
        foreach( $data as $field_name => $array_value ){
            foreach( $array_value as $translate_id => $value ){
                $create_obj[$translate_id][$field_name] = $value;
                $create_obj[$translate_id]['parent_uniq'] = $parent_uniq;
                $create_obj[$translate_id]['translate_id'] = $translate_id;
            }
        }   
        
        \App\Experiances__Groups::insert( $create_obj );
        \Session::flash('message', 'Successfully created nerd!');
        return \Redirect::to( action('ExperiancesGroupsController@index' ) );          
    }

    public function edit($parent_uniq){
        $db = \App\Experiances__Groups::where( 'parent_uniq', $parent_uniq )->get();
        $data = [];
        foreach( $db as $row ){
            $data[$row->translate_id] = $row;
        }

        return view('groups.edit', compact( 'data', 'parent_uniq' ) );
    }

    public function update( $parent_uniq ){
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
            \App\Experiances__Groups::where( [ [ 'parent_uniq', $parent_uniq ], ['translate_id', $translate_id]] )->update( $update );
          }
      
          \Session::flash('message', 'Successfully created nerd!');
          return \Redirect::to( action('ExperiancesGroupsController@index' ) );    
    }

    public function destroy( $parent_uniq ){
        \App\Experiances__Groups::where( 'parent_uniq', $parent_uniq )->delete();

        \Session::flash('message', 'Successfully created nerd!');
        return \Redirect::to( action('ExperiancesGroupsController@index' ) );           
    }
}
