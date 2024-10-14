<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EquiposController;
use App\Http\Controllers\PilotosController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::get('equipos/esta-borrado/{equipo}', [EquiposController::class, 'estaBorrado']);
Route::get('equipos/con-pilotos-puntos', [EquiposController::class, 'conPilotosPuntos']);
Route::get('equipos/con-cantidad-pilotos-puntos', [EquiposController::class, 'conCantidadPilotosPuntos']);
Route::apiResource('equipos', EquiposController::class);

Route::get('pilotos/con-equipo', [PilotosController::class, 'conEquipo']);
Route::get('pilotos/ordenados-por-puntos', [PilotosController::class, 'ordenadosPorPuntos']);
Route::apiResource('pilotos', PilotosController::class);
