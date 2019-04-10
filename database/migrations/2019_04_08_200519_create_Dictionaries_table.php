<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateDictionariesTable extends Migration
{

    public function up()
    {
        Schema::create('Dictionaries', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->softDeletes();
            $table->integer('translate_id')->unsigned();
            $table->integer('page_id')->unsigned();
            $table->string('key', 255);
            $table->text('value');
            $table->text('description');
        });
    }

    public function down()
    {
        Schema::drop('Dictionaries');
    }
}
