@extends('layout.app')
@section('page')
    {{ Breadcrumbs::render('gallery.edit', $gallery) }}

{!! Form::model( $gallery, array('action' => ['GalleriesController@update', $gallery->id], 'method' => 'PATCH')) !!}
    @method('patch')
	<ul>
		<li>
			{!! Form::label('comment', '* Nazwa galerii:') !!}
            {!! Form::text('comment', null, [ 'required' => true, 'placeholder' => 'Nazwa galerii' ]) !!}
            <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('comment') }}</p>
		</li>
    </ul>
    <div class="m-t-40"></div>
        <div class="row m-t-20">
            <div class="col-md-12 end-md">
                <button class="btn btn-default system-btn" type="submit">
                        <span class="flex middle-md">
                            <i class="fa fa-paper-plane-o" aria-hidden="true"></i> Zapisz zmiany
                        </span>
                </button>
            </div>
        </div>   

        <label class="m-t-30 m-b-10">Zdjęcia:</label>
        
        <drop-zone url = "{{ action('GalleriesController@uploadFile', [ $gallery->id ] ) }}" ></drop-zone>
        <div class=" m-t-50"></div>
        <div class="row">
            <div class="col-md-12 flex row-wrap">
                @foreach( $gallery->getImages as $row )
                    <gallery-image url = '{{ action('GalleriesController@deleteGalleryImage', [ $row->id ] ) }}' path = '{{ asset( $row->getFile->path ) }}'></gallery-image>
                @endforeach
            </div>
        </div>
{!! Form::close() !!}
@endsection


