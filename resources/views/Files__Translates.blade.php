{!! Form::open(array('route' => 'route.name', 'method' => 'POST')) !!}
	<ul>
		<li>
			{!! Form::label('file_id', 'File_id:') !!}
			{!! Form::text('file_id') !!}
		</li>
		<li>
			{!! Form::label('translate_id', 'Translate_id:') !!}
			{!! Form::text('translate_id') !!}
		</li>
		<li>
			{!! Form::label('title', 'Title:') !!}
			{!! Form::text('title') !!}
		</li>
		<li>
			{!! Form::label('description', 'Description:') !!}
			{!! Form::textarea('description') !!}
		</li>
		<li>
			{!! Form::submit() !!}
		</li>
	</ul>
{!! Form::close() !!}