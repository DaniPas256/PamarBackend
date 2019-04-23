{!! Form::open(array('route' => 'route.name', 'method' => 'POST')) !!}
	<ul>
		<li>
			{!! Form::label('show_on_slider', 'Show_on_slider:') !!}
			{!! Form::text('show_on_slider') !!}
		</li>
		<li>
			{!! Form::label('translate_id', 'Translate_id:') !!}
			{!! Form::text('translate_id') !!}
		</li>
		<li>
			{!! Form::label('gallery_id', 'Gallery_id:') !!}
			{!! Form::text('gallery_id') !!}
		</li>
		<li>
			{!! Form::label('has_gallery', 'Has_gallery:') !!}
			{!! Form::text('has_gallery') !!}
		</li>
		<li>
			{!! Form::label('file_id', 'File_id:') !!}
			{!! Form::text('file_id') !!}
		</li>
		<li>
			{!! Form::label('seo_title', 'Seo_title:') !!}
			{!! Form::text('seo_title') !!}
		</li>
		<li>
			{!! Form::label('seo_description', 'Seo_description:') !!}
			{!! Form::textarea('seo_description') !!}
		</li>
		<li>
			{!! Form::label('seo_keywords', 'Seo_keywords:') !!}
			{!! Form::text('seo_keywords') !!}
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