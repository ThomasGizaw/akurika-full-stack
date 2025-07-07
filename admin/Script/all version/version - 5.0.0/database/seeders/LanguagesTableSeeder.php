<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class LanguagesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('languages')->insert([
            [
                'lang_name' => 'English',
                'lang_code' => 'en',
                'is_default' => 'yes',
                'status' => 1,
                'lang_direction' => 'left_to_right',
            ],
        ]);
    }
}
