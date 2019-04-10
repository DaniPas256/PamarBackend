<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Eloquent\Model;

class CreateForeignKeys extends Migration {

	public function up()
	{
		Schema::table('Dictionaries', function(Blueprint $table) {
			$table->foreign('translate_id')->references('id')->on('Translates')
						->onDelete('no action')
						->onUpdate('no action');
		});
		Schema::table('Dictionaries', function(Blueprint $table) {
			$table->foreign('page_id')->references('id')->on('Pages')
						->onDelete('no action')
						->onUpdate('no action');
		});
		Schema::table('Experiances', function(Blueprint $table) {
			$table->foreign('file_id')->references('id')->on('Files')
						->onDelete('no action')
						->onUpdate('no action');
		});
		Schema::table('Experiances', function(Blueprint $table) {
			$table->foreign('gallery_id')->references('id')->on('Galleries')
						->onDelete('no action')
						->onUpdate('no action');
		});
		Schema::table('Files__Translates', function(Blueprint $table) {
			$table->foreign('file_id')->references('id')->on('Files')
						->onDelete('no action')
						->onUpdate('no action');
		});
		Schema::table('Files__Translates', function(Blueprint $table) {
			$table->foreign('translate_id')->references('id')->on('Translates')
						->onDelete('no action')
						->onUpdate('no action');
		});
		Schema::table('Experiances__List_Items', function(Blueprint $table) {
			$table->foreign('experiance_id')->references('id')->on('Experiances')
						->onDelete('no action')
						->onUpdate('no action');
		});
		Schema::table('Galleries__Descriptions', function(Blueprint $table) {
			$table->foreign('translate_id')->references('id')->on('Translates')
						->onDelete('no action')
						->onUpdate('no action');
		});
		Schema::table('Galleries__Descriptions', function(Blueprint $table) {
			$table->foreign('gallery_id')->references('id')->on('Galleries')
						->onDelete('cascade')
						->onUpdate('no action');
		});
		Schema::table('Galleries__Images', function(Blueprint $table) {
			$table->foreign('gallery_id')->references('id')->on('Galleries')
						->onDelete('cascade')
						->onUpdate('no action');
		});
		Schema::table('Galleries__Images', function(Blueprint $table) {
			$table->foreign('file_id')->references('id')->on('Files')
						->onDelete('no action')
						->onUpdate('no action');
		});
		Schema::table('References', function(Blueprint $table) {
			$table->foreign('file_id')->references('id')->on('Files')
						->onDelete('no action')
						->onUpdate('no action');
		});
		Schema::table('References', function(Blueprint $table) {
			$table->foreign('gallery_id')->references('id')->on('Galleries')
						->onDelete('cascade')
						->onUpdate('no action');
		});
		Schema::table('News', function(Blueprint $table) {
			$table->foreign('translate_id')->references('id')->on('Translates')
						->onDelete('no action')
						->onUpdate('no action');
		});
		Schema::table('News', function(Blueprint $table) {
			$table->foreign('gallery_id')->references('id')->on('Galleries')
						->onDelete('no action')
						->onUpdate('no action');
		});
		Schema::table('News', function(Blueprint $table) {
			$table->foreign('file_id')->references('id')->on('Files')
						->onDelete('no action')
						->onUpdate('no action');
		});
	}

	public function down()
	{
		Schema::table('Dictionaries', function(Blueprint $table) {
			$table->dropForeign('Dictionaries_translate_id_foreign');
		});
		Schema::table('Dictionaries', function(Blueprint $table) {
			$table->dropForeign('Dictionaries_page_id_foreign');
		});
		Schema::table('Experiances', function(Blueprint $table) {
			$table->dropForeign('Experiances_file_id_foreign');
		});
		Schema::table('Experiances', function(Blueprint $table) {
			$table->dropForeign('Experiances_gallery_id_foreign');
		});
		Schema::table('Files__Translates', function(Blueprint $table) {
			$table->dropForeign('Files__Translates_file_id_foreign');
		});
		Schema::table('Files__Translates', function(Blueprint $table) {
			$table->dropForeign('Files__Translates_translate_id_foreign');
		});
		Schema::table('Experiances__List_Items', function(Blueprint $table) {
			$table->dropForeign('Experiances__List_Items_experiance_id_foreign');
		});
		Schema::table('Galleries__Descriptions', function(Blueprint $table) {
			$table->dropForeign('Galleries__Descriptions_translate_id_foreign');
		});
		Schema::table('Galleries__Descriptions', function(Blueprint $table) {
			$table->dropForeign('Galleries__Descriptions_gallery_id_foreign');
		});
		Schema::table('Galleries__Images', function(Blueprint $table) {
			$table->dropForeign('Galleries__Images_gallery_id_foreign');
		});
		Schema::table('Galleries__Images', function(Blueprint $table) {
			$table->dropForeign('Galleries__Images_file_id_foreign');
		});
		Schema::table('References', function(Blueprint $table) {
			$table->dropForeign('References_file_id_foreign');
		});
		Schema::table('References', function(Blueprint $table) {
			$table->dropForeign('References_gallery_id_foreign');
		});
		Schema::table('News', function(Blueprint $table) {
			$table->dropForeign('News_translate_id_foreign');
		});
		Schema::table('News', function(Blueprint $table) {
			$table->dropForeign('News_gallery_id_foreign');
		});
		Schema::table('News', function(Blueprint $table) {
			$table->dropForeign('News_file_id_foreign');
		});
	}
}