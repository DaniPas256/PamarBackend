<?php

use Illuminate\Database\Seeder;
use \Galleries;

class GalleriesTableSeeder extends Seeder
{

    public function run()
    {
        //DB::table('Galleries')->delete();

        // About gallery
        Galleries::create(array(
            'special_id' => 'about',
        ));
    }
}
