@extends('layout.app')
@section('page')
    {{ Breadcrumbs::render('news.edit', $news_data[1] ) }}
    
    <div class="tab-content">
        {!! Form::open(array('action' => ['NewsController@update', $news_id ], 'method' => 'POST')) !!}
        {{method_field('PATCH')}}
        <tabs :languages = 'languages'></tabs>
        <div class="m-b-30"></div>
                @foreach ($languages as $key => $translate_id)
                    <div id="menu-{{ $key + 1 }}" class="tab-pane fade in {{ $key ? '' : "active" }}">
                        <ul>
                            <li>
                            <file-browser init = '{{ $news_data[$translate_id]->getFile->path }}' asset = '{{ asset('') }}' bind = "{{ $translate_id }}"></file-browser>
                            </li>
                            <li>
                                {!! Form::label('title['.$translate_id.']', '* Tytuł:') !!}
                                {!! Form::text('title['.$translate_id.']', $news_data[$translate_id]['title'], [ 'required' => true, 'placeholder' => 'Krótka nazwa' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('title') }}</p>
                            </li>
                            <li>
                                {!! Form::label('description['.$translate_id.']', 'Krótki opis:') !!}
                                {!! Form::text('description['.$translate_id.']', $news_data[$translate_id]['description'], [ 'required' => false, 'placeholder' => 'Krótki opis' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('description') }}</p>
                            </li>      
                            <li>
                                {!! Form::label('full_content['.$translate_id.']', 'Treść newsa:') !!}
                                {!! Form::text('full_content['.$translate_id.']', $news_data[$translate_id]['full_content'], [ 'required' => true, 'placeholder' => 'Pełna nazwa', 'class' => 'ckeditor' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('full_content') }}</p>
                            </li> 
                            <li>
                                    {!! Form::label('seo_title['.$translate_id.']', 'Seo tytuł:') !!}
                                    {!! Form::text('seo_title['.$translate_id.']', $news_data[$translate_id]['seo_title'], [ 'required' => false, 'placeholder' => 'Tytuł' ]) !!}
                                    <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('seo_title') }}</p>
                                </li>
                                <li>
                                    {!! Form::label('seo_description['.$translate_id.']', 'Seo opis:') !!}
                                    {!! Form::text('seo_description['.$translate_id.']', $news_data[$translate_id]['seo_description'], [ 'required' => false, 'placeholder' => 'Tytuł' ]) !!}
                                    <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('seo_description') }}</p>
                                </li>
                                <li>
                                    {!! Form::label('seo_keywords['.$translate_id.']', 'Seo keywords:') !!}
                                    {!! Form::text('seo_keywords['.$translate_id.']', $news_data[$translate_id]['seo_keywords'], [ 'required' => false, 'placeholder' => 'Tytuł' ]) !!}
                                    <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('seo_keywords') }}</p>
                                </li>                             
                            <li>
                                {{ Form::checkbox('visible['.$translate_id.']', '1', $news_data[$translate_id]['visible'] ) }} 
                                {!! Form::label('visible['.$translate_id.']', 'News aktywny:') !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('visible') }}</p>
                            </li>
                            <li>
                                {{ Form::checkbox('show_on_slider['.$translate_id.']', '1', $news_data[$translate_id]['show_on_slider'] ) }} 
                                {!! Form::label('show_on_slider['.$translate_id.']', 'Pokaż na sliderze:') !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('show_on_slider') }}</p>
                            </li> 
                            <li>

                                {{ $news_data[$translate_id]['gallery_id'] }}
                                {!! Form::label('gallery_id['.$translate_id.']', 'Galeria:') !!}
                                {!! Form::select('gallery_id['.$translate_id.']', $galleries, ( $news_data[$translate_id]['gallery_id'] == null ? 0 : $news_data[$translate_id]['gallery_id'] ) ); !!} 
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


