<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateFilesTranslatesTable extends Migration {

	public function up()
	{
		Schema::create('Files__Translates', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->integer('file_id')->unsigned();
			$table->integer('translate_id')->unsigned();
			$table->string('title', 255);
			$table->text('description');
		});
	}

	public function down()
	{
		Schema::drop('Files__Translates');
	}
}