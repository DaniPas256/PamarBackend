@extends('layout.app')
@section('page')
    {{ Breadcrumbs::render('experiance_groups.edit', $data[1] ) }}
     
    <div class="tab-content">
        {!! Form::open(array('action' => ['ExperiancesGroupsController@update', $parent_uniq], 'method' => 'POST')) !!}
        @method('patch')
        <tabs :languages = 'languages'></tabs>
        <div class="m-b-30"></div>
                @foreach ($languages as $key => $translate_id)
                    <div id="menu-{{ $key + 1 }}" class="tab-pane fade in {{ $key ? '' : "active" }}">
                        <ul>
                            <li>
                                {!! Form::label('title['.$translate_id.']', 'Nazwa systemowa:') !!}
                                {!! Form::text('title['.$translate_id.']', $data[$translate_id]['title'], [ 'required' => false, 'placeholder' => 'Nazwa systemowa' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('title') }}</p>
                            </li>
                            <li>
                                {!! Form::label('description['.$translate_id.']', 'Opis:') !!}
                                {!! Form::textarea('description['.$translate_id.']', $data[$translate_id]['description'], [ 'required' => false, 'placeholder' => '', 'class' => 'ckeditor' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('description') }}</p>
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


