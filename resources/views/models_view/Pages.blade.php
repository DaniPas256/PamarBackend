{!! Form::open(array('route' => 'route.name', 'method' => 'POST')) !!}
	<ul>
		<li>
			{!! Form::label('name', 'Name:') !!}
			{!! Form::text('name') !!}
		</li>
		<li>
			{!! Form::label('seo_title', 'Seo_title:') !!}
			{!! Form::text('seo_title') !!}
		</li>
		<li>
			{!! Form::label('seo_description', 'Seo_description:') !!}
			{!! Form::text('seo_description') !!}
		</li>
		<li>
			{!! Form::label('seo_keywords', 'Seo_keywords:') !!}
			{!! Form::text('seo_keywords') !!}
		</li>
		<li>
			{!! Form::submit() !!}
		</li>
	</ul>
{!! Form::close() !!}