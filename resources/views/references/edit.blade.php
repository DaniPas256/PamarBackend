@extends('layout.app')
@section('page')
    {{ Breadcrumbs::render('reference.edit', $reference_data[1] ) }}
    
    <div class="tab-content">
        {!! Form::open(array('action' => ['ReferencesController@update', $reference ], 'method' => 'POST')) !!}
        {{method_field('PATCH')}}
        <tabs :languages = 'languages'></tabs>
        <div class="m-b-30"></div>
                @foreach ($languages as $key => $translate_id)
                    <div id="menu-{{ $key + 1 }}" class="tab-pane fade in {{ $key ? '' : "active" }}">
                        <ul>
                            <li>
                            <file-browser init = '{{ $reference_data[$translate_id]->getFile->path }}' asset = '{{ asset('') }}' bind = "{{ $translate_id }}"></file-browser>
                            </li>
                            <li>
                                {!! Form::label('short_title['.$translate_id.']', 'Krótka nazwa ( na kafelkę ):') !!}
                                {!! Form::text('short_title['.$translate_id.']', $reference_data[$translate_id]['short_title'], [ 'required' => false, 'placeholder' => 'Krótka nazwa' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('short_title') }}</p>
                            </li>
                            <li>
                                {!! Form::label('city['.$translate_id.']', 'Lokalizacja ( na kafelkę ):') !!}
                                {!! Form::text('city['.$translate_id.']', $reference_data[$translate_id]['city'], [ 'required' => false, 'placeholder' => 'Lokalizacja' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('city') }}</p>
                            </li>      
                            <li>
                                {!! Form::label('full_name['.$translate_id.']', '* Pełna nazwa ( na podstronę ):') !!}
                                {!! Form::textarea('full_name['.$translate_id.']', $reference_data[$translate_id]['full_name'], [ 'required' => true, 'placeholder' => 'Pełna nazwa', 'class' => 'ckeditor' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('full_name') }}</p>
                            </li> 
                            <li>
                                {!! Form::label('description['.$translate_id.']', 'Opis:') !!}
                                {!! Form::textarea('description['.$translate_id.']', $reference_data[$translate_id]['description'], [ 'required' => false, 'placeholder' => '', 'class' => 'ckeditor' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('description') }}</p>
                            </li>                              
                            <li>
                                {!! Form::label('project_details['.$translate_id.']', 'Szczególy projektu:') !!}
                                {!! Form::textarea('project_details['.$translate_id.']', $reference_data[$translate_id]['project_details'], [ 'required' => false, 'placeholder' => '', 'class' => 'ckeditor' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('project_details') }}</p>
                            </li>  
                            <li>
                                {{ Form::checkbox('show_on_main['.$translate_id.']', '1', $reference_data[$translate_id]['show_on_main'] ) }} 
                                {!! Form::label('show_on_main['.$translate_id.']', 'Pokaż na stronie głównej:') !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('show_on_main') }}</p>
                            </li>
                            <li>
                                {{ Form::checkbox('show_on_slider['.$translate_id.']', '1', $reference_data[$translate_id]['show_on_slider'] ) }} 
                                {!! Form::label('show_on_slider['.$translate_id.']', 'Pokaż na sliderze:') !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('show_on_slider') }}</p>
                            </li> 
                            <li>
                                {!! Form::label('gallery_id['.$translate_id.']', 'Galeria:') !!}
                                {!! Form::select('gallery_id['.$translate_id.']', $galleries, ( $reference_data[$translate_id]['gallery_id'] == null ? 0 : $reference_data[$translate_id]['gallery_id'] ) ); !!} 
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
                                        <i class="fa fa-paper-plane-o" aria-hidden="true"></i> Zapisz zmiany
                                    </span>
                            </button>
                        </div>
                    </div>   
        {!! Form::close() !!}
    </div>   
@endsection


