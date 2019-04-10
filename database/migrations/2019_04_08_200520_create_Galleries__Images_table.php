<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateGalleriesImagesTable extends Migration {

	public function up()
	{
		Schema::create('Galleries__Images', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->integer('gallery_id')->unsigned();
			$table->integer('file_id')->unsigned();
		});
	}

	public function down()
	{
		Schema::drop('Galleries__Images');
	}
}