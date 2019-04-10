<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateExperiancesListItemsTable extends Migration {

	public function up()
	{
		Schema::create('Experiances__List_Items', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->integer('experiance_id')->unsigned();
			$table->text('text');
		});
	}

	public function down()
	{
		Schema::drop('Experiances__List_Items');
	}
}