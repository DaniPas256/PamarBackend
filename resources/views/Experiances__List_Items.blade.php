{!! Form::open(array('route' => 'route.name', 'method' => 'POST')) !!}
	<ul>
		<li>
			{!! Form::label('experiance_id', 'Experiance_id:') !!}
			{!! Form::text('experiance_id') !!}
		</li>
		<li>
			{!! Form::label('text', 'Text:') !!}
			{!! Form::textarea('text') !!}
		</li>
		<li>
			{!! Form::submit() !!}
		</li>
	</ul>
{!! Form::close() !!}