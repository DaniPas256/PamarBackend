<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateTranslatesTable extends Migration {

	public function up()
	{
		Schema::create('Translates', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->string('name', 20)->default('pl');
		});
	}

	public function down()
	{
		Schema::drop('Translates');
	}
}