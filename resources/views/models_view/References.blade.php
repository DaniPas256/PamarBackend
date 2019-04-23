{!! Form::open(array('route' => 'route.name', 'method' => 'POST')) !!}
	<ul>
		<li>
			{!! Form::label('file_id', 'File_id:') !!}
			{!! Form::text('file_id') !!}
		</li>
		<li>
			{!! Form::label('short_title', 'Short_title:') !!}
			{!! Form::text('short_title') !!}
		</li>
		<li>
			{!! Form::label('city', 'City:') !!}
			{!! Form::text('city') !!}
		</li>
		<li>
			{!! Form::label('full_name', 'Full_name:') !!}
			{!! Form::text('full_name') !!}
		</li>
		<li>
			{!! Form::label('description', 'Description:') !!}
			{!! Form::textarea('description') !!}
		</li>
		<li>
			{!! Form::label('project_details', 'Project_details:') !!}
			{!! Form::textarea('project_details') !!}
		</li>
		<li>
			{!! Form::label('has_gallery', 'Has_gallery:') !!}
			{!! Form::text('has_gallery') !!}
		</li>
		<li>
			{!! Form::label('gallery_id', 'Gallery_id:') !!}
			{!! Form::text('gallery_id') !!}
		</li>
		<li>
			{!! Form::label('show_on_slider', 'Show_on_slider:') !!}
			{!! Form::text('show_on_slider') !!}
		</li>
		<li>
			{!! Form::submit() !!}
		</li>
	</ul>
{!! Form::close() !!}