<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateExperiancesTable extends Migration {

	public function up()
	{
		Schema::create('Experiances', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->integer('file_id')->unsigned();
			$table->text('description');
			$table->tinyInteger('has_gallery')->default('0');
			$table->integer('gallery_id')->unsigned();
		});
	}

	public function down()
	{
		Schema::drop('Experiances');
	}
}