@extends('layout.app')
@section('page')
    {{ Breadcrumbs::render('gallery.index') }}

    <div class="row" style="margin-top: -75px !important;">
        <div class="col-md-12 end-md">
            <button class="btn btn-default system-btn">
                <a href="{{ url('gallery/create') }}">
                    <span class="flex middle-md">
                        <i class="fa fa-plus"></i> Dodaj galerię
                    </span>
                </a>
            </button>
        </div>
    </div>
    <table class="table">
        <thead>
            <tr>
                <th class = 'tiny'>ID</th>
                <th>Nazwa</th>
                <th class="short">Akcja</th>
            </tr>
        </thead>
        <tbody>
            @foreach( $gallery as $key => $row )
                <tr>
                    <td>{{ $row->id }}</td>
                    <td>{{ $row->comment }}</td>
                    <td>
                        <a href="{{ url('gallery/'.$row->id.'/edit') }}">
                            <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                        </a>
                        <a href="{{ url('gallery/'.$row->id.'/delete') }}" onclick="return confirm('Czy napewno chcesz usunąć ten obiekt?')">
                            <i class="fa fa-trash-o" aria-hidden="true"></i>
                        </a>
                    </td> 
                </tr>
            @endforeach 
        </tbody>
    </table>
     <div class="pagination__wrapper">
         {{ $gallery->links() }}
     </div>
@endsection