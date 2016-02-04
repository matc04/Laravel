<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class UsuarioSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         $faker = Faker::create();

        for ($i=0; $i < 40; $i++) {
            \DB::table('usuarios')->insert(array (
                'snombre' => $faker->firstname,
                'sapellido' => $faker->lastname,
                'scontrasena' => \Hash::make('12345'),
                'scorreo' => $faker->unique()->email,
                'badministra' => 0,
            ));
        }

    }
}
