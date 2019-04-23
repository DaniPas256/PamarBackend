<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    {{-- CSRF Token --}}
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <script>
        window.Laravel = {!! json_encode([
            'csrfToken' => csrf_token(),
        ]) !!};
    </script>    

    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,900|Roboto:400,500,700&amp;subset=latin-ext" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="{{ asset('css/flexboxgrid.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/_bootstrap.css') }}">
    <link rel="stylesheet" href="{{ asset('css/others.css') }}">
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head>
<body>
    <main id="app">
        @yield('content') 
        @if ( $USER['id'] > 0 )
            @include('layout.sidemenu')
            <div id="content-wrapper">
                @yield('page')
            </div>
        @endif
    </main>

    <script src="{{ asset('js/app.js') }}"></script>
    <script src = {{ asset('__text_editor__/ckeditor.js') }}></script>
    <script>
    (function (){
        document.querySelectorAll('.ckeditor').forEach( function( item ) {
            const id = item.getAttribute('id');
            CKEDITOR.replace( id );
        })
    })();</script>
</body>
</html>