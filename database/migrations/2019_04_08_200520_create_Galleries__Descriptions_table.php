<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateGalleriesDescriptionsTable extends Migration {

	public function up()
	{
		Schema::create('Galleries__Descriptions', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->integer('translate_id')->unsigned();
			$table->string('title', 255);
			$table->text('description');
			$table->integer('gallery_id')->unsigned();
		});
	}

	public function down()
	{
		Schema::drop('Galleries__Descriptions');
	}
}