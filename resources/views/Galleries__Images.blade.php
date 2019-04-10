{!! Form::open(array('route' => 'route.name', 'method' => 'POST')) !!}
	<ul>
		<li>
			{!! Form::label('gallery_id', 'Gallery_id:') !!}
			{!! Form::text('gallery_id') !!}
		</li>
		<li>
			{!! Form::label('file_id', 'File_id:') !!}
			{!! Form::text('file_id') !!}
		</li>
		<li>
			{!! Form::submit() !!}
		</li>
	</ul>
{!! Form::close() !!}