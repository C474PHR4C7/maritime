<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $array1 = ['Crete','Kea','Aegean Warrior','Lefkas','Kastellorizo','Antonis T.'];
        DB::table('vessels')->insert([
            'name' => array_rand($array1),
            'IMO_number' => Str::random(11),
        ]);

    }
}
