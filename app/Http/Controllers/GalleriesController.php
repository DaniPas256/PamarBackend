<?php 

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class GalleriesController extends Controller 
{

  /**
   * Display a listing of the resource.
   *
   * @return Response
   */
  public function index()
  {
    $gallery = \App\Galleries::paginate(20);
    return \View::make('gallery.index', compact( 'gallery' ) );
  }

  /**
   * Show the form for creating a new resource.
   *
   * @return Response
   */
  public function create()
  {
    return \View::make('gallery.create');
  }

  /**
   * Store a newly created resource in storage.
   *
   * @return Response
   */
  public function store(Request $request)
  {

    $rules = array(
      'comment' => 'required'
      );
    $validator = \Validator::make(\Input::all(), $rules);

    if ($validator->fails()) {
        return \Redirect::to('gallery/create')
            ->withErrors($validator)
            ->withInput(\Input::all());
    } else {
        $gallery = new \App\Galleries;
        $gallery->comment = \Input::get('comment');
        $gallery->save();

        \Session::flash('message', 'Successfully created nerd!');
        return \Redirect::to( action('GalleriesController@edit', [$gallery->id] ) );
    }
  }

  /**
   * Show the form for editing the specified resource.
   *
   * @param  int  $id
   * @return Response
   */
  public function edit( \App\Galleries $gallery)
  {
    $gallery->load(['getImages']);
    return \View::make('gallery.edit', compact( 'gallery' ));
  }

  /**
   * Update the specified resource in storage.
   *
   * @param  int  $id
   * @return Response
   */
  public function update( \App\Galleries $gallery )
  {
    $rules = array(
      'comment'       => 'required'
      );
    $validator = \Validator::make(\Input::all(), $rules);

    if ($validator->fails()) {
        return \Redirect::to('gallery/' . $gallery->id . '/edit')
            ->withErrors($validator)
            ->withInput(\Input::all());
    } else {
        $gallery->comment = \Input::get('comment');
        $gallery->save();

        \Session::flash('message', 'Successfully created nerd!');
        return \Redirect::to('gallery/index');
    }
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return Response
   */
  public function destroy( \App\Galleries $gallery )
  {
    $gallery->delete();
    \Session::flash('message', 'Successfully created nerd!');
    return \Redirect::to('gallery/index');
  }
  
  public function uploadFile( Request $request, \App\Galleries $gallery ){
      $imageName = time() . '_' . $request->file->getClientOriginalName();
      $request->file->move( public_path('userFiles/galleries'), $imageName);
      

    $path_to_file = './backend/public/userFiles/galleries/' . $imageName;
    $file = new \App\Files();
      $file->name = $request->file->getClientOriginalName(); 
      $file->extension = $request->file->getClientOriginalExtension();
      $file->path = $path_to_file; 
    $file->save();

    $gallery_image = new \App\Galleries__Images();
      $gallery_image->file_id = $file->id;
      $gallery_image->gallery_id = $gallery->id;
    $gallery_image->save();

    return response()->json(['success'=>'You have successfully upload file.']);
  }

  public function deleteGalleryImage( \App\Galleries__Images $gallery ){
    $gallery->delete();
    return response()->json( [ 'status' => true ] );
  }
}

?>