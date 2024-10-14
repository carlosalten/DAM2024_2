<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Truncar las tablas antes de insertar los datos
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        DB::table('pilotos')->truncate();
        DB::table('equipos')->truncate();
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        // Insertar datos
        $this->call([
            EquiposSeeder::class,
            PilotosSeeder::class,
        ]);
    }
}
