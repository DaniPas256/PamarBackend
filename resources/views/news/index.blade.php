@extends('layout.app')
@section('page')
    {{ Breadcrumbs::render('news.index') }}

    <div class="row" style="margin-top: -75px !important;">
        <div class="col-md-12 end-md">
            <button class="btn btn-default system-btn">
                <a href="{{ url('news/create') }}">
                    <span class="flex middle-md">
                        <i class="fa fa-plus"></i> Dodaj newsa
                    </span>
                </a>
            </button>
        </div>
    </div>

    <tabs :languages = 'languages'></tabs>

    <div class="tab-content">
            @foreach ($languages as $key => $translate_id)
                <div id="menu-{{ $key + 1 }}" class="tab-pane fade in {{ $key ? '' : "active" }}">
                        <table class="table">
                                <thead>
                                    <tr>
                                        <th class = 'tiny'>ID</th>
                                        <th class="image__holder">Obraz</th>
                                        <th>Nazwa</th>
                                        <th class="short">Akcja</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach( $news_data[$translate_id] as $key => $row )
                                        <tr>
                                            <td>{{ $row->id }}</td>
                                            <td class="image__holder">
                                                <img src="{{ asset( str_replace( './backend/public/', '', $row->getFile->path ) ) }}" alt="">
                                            </td>
                                            <td>{{ $row->title }}</td>
                                            <td>
                                                <a href="{{ url('news/'.$row->id.'/edit') }}">
                                                    <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                </a>
                                                <a href="{{ url('news/'.$row->id.'/delete') }}" onclick="return confirm('Czy napewno chcesz usunąć ten obiekt?')">
                                                    <i class="fa fa-trash-o" aria-hidden="true"></i>
                                                </a>
                                            </td> 
                                        </tr>
                                    @endforeach 
                                </tbody>
                            </table>            
                        </div>
            @endforeach
            <div class="pagination__wrapper">
                    {{ $news->links() }}
                </div>    
        </div>     

@endsection