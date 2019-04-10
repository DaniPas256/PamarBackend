<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateNewsTable extends Migration {

	public function up()
	{
		Schema::create('News', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->tinyInteger('show_on_slider')->default('0');
			$table->integer('translate_id')->unsigned();
			$table->integer('gallery_id')->unsigned();
			$table->tinyInteger('has_gallery')->default('0');
			$table->integer('file_id')->unsigned();
			$table->string('seo_title', 255);
			$table->text('seo_description');
			$table->string('seo_keywords', 255);
			$table->string('title', 500);
			$table->text('description');
		});
	}

	public function down()
	{
		Schema::drop('News');
	}
}