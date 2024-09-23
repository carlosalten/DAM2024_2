<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PilotosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('pilotos')->insert([
            ['nombre'=>'Alexander',  'apellido'=>'Albon', 'puntos'=>12, 'numero'=>23, 'equipo_id'=>10],
            ['nombre'=>'Fernando',  'apellido'=>'Alonso',  'puntos'=>62, 'numero'=>14, 'equipo_id'=>5],
            ['nombre'=>'Valtteri',  'apellido'=>'Bottas',  'puntos'=>0, 'numero'=>77, 'equipo_id'=>8],
            ['nombre'=>'Franco',  'apellido'=>'Colapinto',  'puntos'=>4, 'numero'=>43, 'equipo_id'=>10],
            ['nombre'=>'Pierre',  'apellido'=>'Gasly',  'puntos'=>8, 'numero'=>10, 'equipo_id'=>6],
            ['nombre'=>'Lewis',  'apellido'=>'Hamilton',  'puntos'=>174, 'numero'=>44, 'equipo_id'=>1],
            ['nombre'=>'Nico',  'apellido'=>'Hulkenberg',  'puntos'=>24, 'numero'=>27, 'equipo_id'=>9],
            ['nombre'=>'Charles',  'apellido'=>'Leclerc',  'puntos'=>245, 'numero'=>16, 'equipo_id'=>3],
            ['nombre'=>'Kevin',  'apellido'=>'Magnussen',  'puntos'=>6, 'numero'=>20, 'equipo_id'=>9],
            ['nombre'=>'Lando',  'apellido'=>'Norris',  'puntos'=>279, 'numero'=>4, 'equipo_id'=>4],
            ['nombre'=>'Esteban',  'apellido'=>'Ocon',  'puntos'=>5, 'numero'=>31, 'equipo_id'=>6],
            ['nombre'=>'Sergio',  'apellido'=>'Perez',  'puntos'=>144, 'numero'=>11, 'equipo_id'=>2],
            ['nombre'=>'Oscar',  'apellido'=>'Piastri',  'puntos'=>237, 'numero'=>81, 'equipo_id'=>4],
            ['nombre'=>'Daniel',  'apellido'=>'Ricciardo',  'puntos'=>12, 'numero'=>3, 'equipo_id'=>7],
            ['nombre'=>'George',  'apellido'=>'Russell',  'puntos'=>155, 'numero'=>63, 'equipo_id'=>1],
            ['nombre'=>'Carlos',  'apellido'=>'Sainz',  'puntos'=>190, 'numero'=>55, 'equipo_id'=>3],
            ['nombre'=>'Lance',  'apellido'=>'Stroll',  'puntos'=>24, 'numero'=>18, 'equipo_id'=>5],
            ['nombre'=>'Yuki',  'apellido'=>'Tsunoda',  'puntos'=>22, 'numero'=>22, 'equipo_id'=>7],
            ['nombre'=>'Max',  'apellido'=>'Verstappen',  'puntos'=>331, 'numero'=>1, 'equipo_id'=>2],
            ['nombre'=>'Zhou',  'apellido'=>'Guanyu',  'puntos'=>0, 'numero'=>24, 'equipo_id'=>8],
        ]);
    }
}
