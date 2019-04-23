@extends('layout.app')
@section('page')
    {{ Breadcrumbs::render('experiance.edit', $experiance_data[1] ) }}
    
    <div class="tab-content">
        {!! Form::open(array('action' => ['ExperiancesController@update', $parent_uniq], 'method' => 'POST')) !!}
        @method('patch')
        <tabs :languages = 'languages'></tabs>
        <div class="m-b-30"></div>
                @foreach ($languages as $key => $translate_id)
                    <div id="menu-{{ $key + 1 }}" class="tab-pane fade in {{ $key ? '' : "active" }}">
                        <ul>
                            <li>
                                <file-browser init = '{{ $experiance_data[$translate_id]->getFiles->path }}' asset = '{{ asset('') }}' bind = "{{ $translate_id }}"></file-browser>
                            </li> 
                            <li>
                                {!! Form::label('name['.$translate_id.']', 'Nazwa systemowa:') !!}
                                {!! Form::text('name['.$translate_id.']', $experiance_data[$translate_id]['name'], [ 'required' => false, 'placeholder' => 'Nazwa systemowa' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('name') }}</p>
                            </li>
                            <li>
                                {!! Form::label('description['.$translate_id.']', 'Opis:') !!}
                                {!! Form::textarea('description['.$translate_id.']', $experiance_data[$translate_id]['description'], [ 'required' => false, 'placeholder' => '', 'class' => 'ckeditor' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('description') }}</p>
                            </li>  
                            <li>
                                {!! Form::label('category['.$translate_id.']', 'Kategoria:') !!}
                                {!! Form::select('category['.$translate_id.']', $category, $experiance_data[$translate_id]['category'] ); !!} 
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('category') }}</p>
                            </li>   
                            <li>
                                    {!! Form::label('experiance_group_id['.$translate_id.']', 'Grupa:') !!}
                                    {!! Form::select('experiance_group_id['.$translate_id.']', $groups[$translate_id], $experiance_data[$translate_id]['experiance_group_id'] ); !!} 
                                    <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('groups') }}</p>                                
                            </li>                             
                            <li>
                                {!! Form::label('', 'Korzyści:') !!}
                                <input-list values = '{{ json_encode( $items[ $experiance_data[$translate_id]->id] ) }}' translate_id = '{{ $translate_id }}'></input-list>
                            </li>
                            </li>   
                            <li>
                                {!! Form::label('gallery_id['.$translate_id.']', 'Galeria:') !!}
                                {!! Form::select('gallery_id['.$translate_id.']', $galleries, ( $experiance_data[$translate_id]['gallery_id'] || 0 ) ); !!} 
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('gallery_id') }}</p>
                            </li>                                                                                        
                        </ul>                                     
                    </div>
                @endforeach 
                <div class="m-t-40"></div>
                <div class="row">
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


