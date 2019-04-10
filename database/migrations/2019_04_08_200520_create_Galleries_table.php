<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateGalleriesTable extends Migration {

	public function up()
	{
		Schema::create('Galleries', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->string('special_id', 100);
		});
	}

	public function down()
	{
		Schema::drop('Galleries');
	}
}