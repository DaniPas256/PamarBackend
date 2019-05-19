@extends('layout.app')
@section('page')
    {{ Breadcrumbs::render('news.create') }}
    
    <div class="tab-content">
        {!! Form::open(array('action' => 'NewsController@store', 'method' => 'POST')) !!}
        <tabs :languages = 'languages'></tabs>
        <div class="m-b-30"></div>
                @foreach ($languages as $key => $translate_id)
                    <div id="menu-{{ $key + 1 }}" class="tab-pane fade in {{ $key ? '' : "active" }}">
                        <ul>
                            <li>
                                <file-browser asset = '{{ asset('') }}' bind = "{{ $translate_id }}"></file-browser>
                            </li>
                            <li>
                                {!! Form::label('title['.$translate_id.']', '* Tytuł:') !!}
                                {!! Form::text('title['.$translate_id.']', null, [ 'required' => true, 'placeholder' => 'Tytuł' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('title') }}</p>
                            </li>
                            <li>
                                {!! Form::label('description['.$translate_id.']', 'Krótki opis:') !!}
                                {!! Form::textarea('description['.$translate_id.']', null, [ 'required' => false, 'placeholder' => 'Krótki opis' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('description') }}</p>
                            </li>      
                            <li>
                                {!! Form::label('full_content['.$translate_id.']', 'Treść newsa:') !!}
                                {!! Form::textarea('full_content['.$translate_id.']', null, [ 'required' => false, 'placeholder' => '', 'class' => 'ckeditor' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('full_content') }}</p>
                            </li>  
                            <li>
                                {!! Form::label('seo_title['.$translate_id.']', 'Seo tytuł:') !!}
                                {!! Form::text('seo_title['.$translate_id.']', null, [ 'required' => false, 'placeholder' => 'Tytuł' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('seo_title') }}</p>
                            </li>
                            <li>
                                {!! Form::label('seo_description['.$translate_id.']', 'Seo opis:') !!}
                                {!! Form::text('seo_description['.$translate_id.']', null, [ 'required' => false, 'placeholder' => 'Tytuł' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('seo_description') }}</p>
                            </li>
                            <li>
                                {!! Form::label('seo_keywords['.$translate_id.']', 'Seo keywords:') !!}
                                {!! Form::text('seo_keywords['.$translate_id.']', null, [ 'required' => false, 'placeholder' => 'Tytuł' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('seo_keywords') }}</p>
                            </li>                                                                    
                            <li>
                                {{ Form::checkbox('visible['.$translate_id.']') }} 
                                {!! Form::label('visible['.$translate_id.']', 'News aktywny') !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('visible') }}</p>
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
                                        <i class="fa fa-paper-plane-o" aria-hidden="true"></i> Dodaj newsa
                                    </span>
                            </button>
                        </div>
                    </div>   
        {!! Form::close() !!}
    </div>   
@endsection


