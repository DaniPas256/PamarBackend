@extends('layout.app')
@section('page')
    {{ Breadcrumbs::render('gallery.create') }}

{!! Form::open(array('action' => 'GalleriesController@store', 'method' => 'POST')) !!}
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
                            <i class="fa fa-paper-plane-o" aria-hidden="true"></i> Dodaj galerię
                        </span>
                </button>
            </div>
        </div>    
{!! Form::close() !!}
@endsection


