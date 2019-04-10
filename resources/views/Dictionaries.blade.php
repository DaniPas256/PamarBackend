{!! Form::open(array('route' => 'route.name', 'method' => 'POST')) !!}
	<ul>
		<li>
			{!! Form::label('translate_id', 'Translate_id:') !!}
			{!! Form::text('translate_id') !!}
		</li>
		<li>
			{!! Form::label('page_id', 'Page_id:') !!}
			{!! Form::text('page_id') !!}
		</li>
		<li>
			{!! Form::label('key', 'Key:') !!}
			{!! Form::text('key') !!}
		</li>
		<li>
			{!! Form::label('value', 'Value:') !!}
			{!! Form::textarea('value') !!}
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