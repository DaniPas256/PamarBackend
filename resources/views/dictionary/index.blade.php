@extends('layout.app')
@section('page')
    {{ Breadcrumbs::render('dictionary.index') }}

    <tabs :languages = 'languages'></tabs>

    <div class="tab-content">
            @foreach ($languages as $key => $translate_id)
                <div id="menu-{{ $key + 1 }}" class="tab-pane fade in {{ $key ? '' : "active" }}">
                        <table class="table">
                                <thead>
                                    <tr>
                                        <th class = 'tiny'>ID</th>
                                        <th class="short">Klucz</th>
                                        <th>Wartość</th>
                                        <th class="short">Akcja</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach( $dictionary[$translate_id] as $key => $row )
                                        <tr>
                                            <td>{{ $row->id }}</td>
                                            <td>{{ $row->key }}</td>
                                            <td>{{ $row->value }}</td>
                                            <td>
                                                <a href="{{ url('dictionary/'.$row->id.'/edit') }}">
                                                    <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                </a>
                                            </td> 
                                        </tr>
                                    @endforeach 
                                </tbody>
                            </table>            
                        </div>
            @endforeach
        </div>     

@endsection