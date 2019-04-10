{!! Form::open(array('route' => 'route.name', 'method' => 'POST')) !!}
	<ul>
		<li>
			{!! Form::label('name', 'Name:') !!}
			{!! Form::text('name') !!}
		</li>
		<li>
			{!! Form::label('extension', 'Extension:') !!}
			{!! Form::text('extension') !!}
		</li>
		<li>
			{!! Form::label('path', 'Path:') !!}
			{!! Form::text('path') !!}
		</li>
		<li>
			{!! Form::submit() !!}
		</li>
	</ul>
{!! Form::close() !!}