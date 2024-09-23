<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EquiposSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('equipos')->insert([
            ['nombre' => 'Mercedes'],
            ['nombre' => 'Red Bull'],
            ['nombre' => 'Ferrari'],
            ['nombre' => 'McLaren'],
            ['nombre' => 'Aston Martin'],
            ['nombre' => 'Alpine'],
            ['nombre' => 'Racing Bulls'],
            ['nombre' => 'Kick Sauber'],
            ['nombre' => 'Haas'],
            ['nombre' => 'Williams'],
        ]);
    }
}
