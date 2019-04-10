<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateReferencesTable extends Migration {

	public function up()
	{
		Schema::create('References', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->integer('file_id')->unsigned();
			$table->string('short_title', 50);
			$table->string('city', 50);
			$table->string('full_name', 100);
			$table->text('description');
			$table->text('project_details');
			$table->tinyInteger('has_gallery')->default('0');
			$table->integer('gallery_id')->unsigned();
			$table->tinyInteger('show_on_slider')->default('0');
		});
	}

	public function down()
	{
		Schema::drop('References');
	}
}