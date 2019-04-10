<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreatePagesTable extends Migration {

	public function up()
	{
		Schema::create('Pages', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->softDeletes();
			$table->string('name', 100);
			$table->string('seo_title', 255);
			$table->string('seo_description', 255);
			$table->string('seo_keywords', 255);
		});
	}

	public function down()
	{
		Schema::drop('Pages');
	}
}