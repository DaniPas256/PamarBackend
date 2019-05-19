@extends('layout.app')
@section('page')
    {{ Breadcrumbs::render('reference.create') }}
    
    <div class="tab-content">
        {!! Form::open(array('action' => 'ReferencesController@store', 'method' => 'POST')) !!}
        <tabs :languages = 'languages'></tabs>
        <div class="m-b-30"></div>
                @foreach ($languages as $key => $translate_id)
                    <div id="menu-{{ $key + 1 }}" class="tab-pane fade in {{ $key ? '' : "active" }}">
                        <ul>
                            <li>
                                <file-browser asset = '{{ asset('') }}' bind = "{{ $translate_id }}"></file-browser>
                            </li>
                            <li>
                                {!! Form::label('short_title['.$translate_id.']', 'Krótka nazwa ( na kafelkę ):') !!}
                                {!! Form::text('short_title['.$translate_id.']', null, [ 'required' => false, 'placeholder' => 'Krótka nazwa' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('short_title') }}</p>
                            </li>
                            <li>
                                {!! Form::label('city['.$translate_id.']', 'Lokalizacja ( na kafelkę ):') !!}
                                {!! Form::text('city['.$translate_id.']', null, [ 'required' => false, 'placeholder' => 'Lokalizacja' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('city') }}</p>
                            </li>      
                            <li>
                                {!! Form::label('full_name['.$translate_id.']', '* Pełna nazwa ( na podstronę ):') !!}
                                {!! Form::textarea('full_name['.$translate_id.']', null, [ 'required' => true, 'placeholder' => 'Pełna nazwa', 'class' => 'ckeditor' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('full_name') }}</p>
                            </li> 
                            <li>
                                {!! Form::label('description['.$translate_id.']', 'Opis:') !!}
                                {!! Form::textarea('description['.$translate_id.']', null, [ 'required' => false, 'placeholder' => '', 'class' => 'ckeditor' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('description') }}</p>
                            </li>                             
                            <li>
                                {!! Form::label('project_details['.$translate_id.']', 'Szczegóły projektu:') !!}
                                {!! Form::textarea('project_details['.$translate_id.']', null, [ 'required' => false, 'placeholder' => '', 'class' => 'ckeditor' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('project_details') }}</p>
                            </li>  
                            <li>
                                {{ Form::checkbox('show_on_main['.$translate_id.']') }} 
                                {!! Form::label('show_on_main['.$translate_id.']', 'Pokaż na stronie głównej:') !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('show_on_main') }}</p>
                            </li>
                            <li>
                                {{ Form::checkbox('show_on_slider['.$translate_id.']') }} 
                                {!! Form::label('show_on_slider['.$translate_id.']', 'Pokaż na sliderze:') !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('show_on_slider') }}</p>
                            </li> 
                            <li>
                                {!! Form::label('gallery_id['.$translate_id.']', 'Galeria:') !!}
                                {!! Form::select('gallery_id['.$translate_id.']', $galleries ); !!} 
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('gallery_id') }}</p>
                            </li>                                                                                        
                        </ul>                                    
                    </div>
                @endforeach
                <div class="m-t-40"></div>
                <div class="row m-t-20">
                        <div class="col-md-12 end-md">
                            <button class="btn btn-default system-btn" type="submit">
                                    <span class="flex middle-md">
                                        <i class="fa fa-paper-plane-o" aria-hidden="true"></i> Dodaj referencję
                                    </span>
                            </button>
                        </div>
                    </div>   
        {!! Form::close() !!}
    </div>   
@endsection


