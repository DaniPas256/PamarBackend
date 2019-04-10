<?php

use Illuminate\Database\Seeder;
use \Translates;

class TranslatesTableSeeder extends Seeder
{

    public function run()
    {
        //DB::table('Translates')->delete();

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
