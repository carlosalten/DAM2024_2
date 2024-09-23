<?php

namespace App\Http\Controllers;

use App\Models\Equipo;
use Illuminate\Http\Request;

class EquiposController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Equipo::orderBy('nombre')->get();
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $equipo = new Equipo();
        $equipo->nombre = $request->nombre;
        $equipo->save();
        return $equipo;
    }

    /**
     * Display the specified resource.
     */
    public function show(Equipo $equipo)
    {
        //$equipo = Equipo::find($id)
        return $equipo;
    }

    public function equiposComienzanConA()
    {
        return Equipo::where('nombre', 'like', 'A%')->get();
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Equipo $equipo)
    {
        $equipo->nombre = $request->nombre;
        $equipo->save();
        return $equipo;
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Equipo $equipo)
    {
        return $equipo->delete();
    }

    /**
     * Lista equipos con:
     * - cantidad de pilotos
     * - puntaje (suma de los puntos de sus pilotos)
     * - ordenados de mayor a menos (desc)
     */
    public function conCantidadPilotosPuntos()
    {
        $equipos = Equipo::withCount('pilotos as cantidad_pilotos')
            ->withSum('pilotos as total_puntos', 'puntos')
            ->orderBy('total_puntos','desc')
            ->get();

        return $equipos;
    }

}
