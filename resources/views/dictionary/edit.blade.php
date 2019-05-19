@extends('layout.app')
@section('page')
    {{ Breadcrumbs::render('dictionary.edit', $dict[1] ) }}
    
    <div class="tab-content">
        {!! Form::open(array('action' => ['DictionariesController@update', $id], 'method' => 'POST')) !!}
        {{method_field('PATCH')}}
        <tabs :languages = 'languages'></tabs>
        <div class="m-b-30"></div>
                @foreach ($languages as $key => $translate_id)
                    <div id="menu-{{ $key + 1 }}" class="tab-pane fade in {{ $key ? '' : "active" }}">
                        <ul>
                            <li>
                                {!! Form::label('value['.$translate_id.']', 'Nazwa systemowa:') !!}
                                {!! Form::text('value['.$translate_id.']', $dict[$translate_id]['value'], [ 'required' => true, 'placeholder' => 'Nazwa systemowa' ]) !!}
                                <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('value') }}</p>
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


