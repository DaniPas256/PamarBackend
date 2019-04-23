@extends('layout.app')
@section('content')
    <link href="{{ asset('css/login.css') }}" rel="stylesheet">

    <div class="row">
        <div class="col-md-12 middle-md center-md flex">

    {{ Form::open( ['url' => 'login', 'class' => 'form'] ) }}
    
        <div class='control block-cube block-input'>
            {{ Form::text('email', Input::old('email'), array('placeholder' => 'Adres e-mail')) }}
          <div class='bg-top'>
            <div class='bg-inner'></div>
          </div>
          <div class='bg-right'>
            <div class='bg-inner'></div>
          </div>
          <div class='bg'>
            <div class='bg-inner'></div>
          </div>
        </div>
        <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('email') }}</p>

        <div class='control block-cube block-input'>
            {{ Form::password('password', [ 'placeholder' => 'Hasło'] ) }}
          <div class='bg-top'>
            <div class='bg-inner'></div>
          </div>
          <div class='bg-right'>
            <div class='bg-inner'></div>
          </div>
          <div class='bg'>
            <div class='bg-inner'></div>
          </div>
        </div>
        <p class="colorRed align-left m-t-0 m-b-20">{{ $errors->first('password') }}</p>

        <button class='btn block-cube block-cube-hover' type='submit'>

          <div class='text uppercase'>
            Zaloguj sie
          </div>
        </button>
        {{ Form::close() }}

        </div>
    </div>

@endsection