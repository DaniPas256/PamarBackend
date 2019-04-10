<?php
use Illuminate\Database\Seeder;
use \Galleries;
use \Pages;
use \Translates;

class DatabaseSeeder extends Seeder
{

    public function run()
    {
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

        Galleries::create(array(
            'special_id' => 'about',
        ));

        // Polski
        Translates::create(array(
            'name' => 'pl',
        ));

        // Angielski
        Translates::create(array(
            'name' => 'eng',
        ));
    }
}
