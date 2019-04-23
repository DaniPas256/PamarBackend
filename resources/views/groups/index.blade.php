@extends('layout.app')
@section('page')
    {{ Breadcrumbs::render('experiance_groups.index') }}

    <div class="row" style="margin-top: -75px !important;">
        <div class="col-md-12 end-md">
            <button class="btn btn-default system-btn">
                <a href="{{ url('experiance_groups/create') }}">
                    <span class="flex middle-md">
                        <i class="fa fa-plus"></i> Nowa grupa
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
                                        <th>Nazwa</th>
                                        <th class="short">Akcja</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach( $groups[$translate_id] as $key => $row )
                                        <tr>
                                            <td>{{ $row->id }}</td>
                                            <td>{{ $row->title }}</td>
                                            <td>
                                                <a href="{{ url('experiance_groups/'.$row->parent_uniq.'/edit') }}">
                                                    <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                </a>
                                                <a href="{{ url('experiance_groups/'.$row->parent_uniq.'/delete') }}" onclick="return confirm('Czy napewno chcesz usunąć ten obiekt?')">
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
                    {{ $grp->links() }}
                </div>    
        </div>     

@endsection