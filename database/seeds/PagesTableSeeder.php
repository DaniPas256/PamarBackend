<?php

use Illuminate\Database\Seeder;
use \Pages;

class PagesTableSeeder extends Seeder
{

    public function run()
    {
        //DB::table('Pages')->delete();

        // Index
        Pages::create(array(
            'name' => 'index',
        ));

        // About
        Pages::create(array(
            'name' => 'about',
        ));

        // References
        Pages::create(array(
            'name' => 'references',
        ));

        // Experiance
        Pages::create(array(
            'name' => 'experiance',
        ));

        // News
        Pages::create(array(
            'name' => 'news',
        ));
    }
}
