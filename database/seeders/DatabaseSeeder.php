<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Faker\Factory as Faker;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // $faker = Faker::create();
        // for ($i = 0; $i < 50; $i++) {
        //     DB::table('institutes')->insert([
        //         'board_id' => $faker->numberBetween(1, 9),
        //         'district_id' => $faker->numberBetween(1, 64),
        //         'thana_id' => $faker->numberBetween(1, 515),
        //         'name' => $faker->firstName . ' ' . $faker->lastName . ' ' . $faker->city,
        //     ]);
        // }
    }
}
