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
            ['nombre' => 'Mercedes', 'color' => '69F0AE'],
            ['nombre' => 'Red Bull', 'color' => '001F6B'],
            ['nombre' => 'Ferrari', 'color' => 'D32F2F'],
            ['nombre' => 'McLaren', 'color' => 'FF9800'],
            ['nombre' => 'Aston Martin', 'color' => '388E3C'],
            ['nombre' => 'Alpine', 'color' => '7C4DFF'],
            ['nombre' => 'Racing Bulls', 'color' => '2962FF'],
            ['nombre' => 'Kick Sauber', 'color' => '00E676'],
            ['nombre' => 'Haas', 'color' => '9E9E9E'],
            ['nombre' => 'Williams', 'color' => '64B5F6'],
        ]);
    }
}
