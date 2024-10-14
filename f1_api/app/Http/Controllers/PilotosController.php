<?php

namespace App\Http\Controllers;

use App\Models\Piloto;
use Illuminate\Http\Request;

class PilotosController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Piloto::orderBy('apellido')->get();
    }

    /**
     * Mostrar pilotos con la info de su equipo.
     */
    public function conEquipo()
    {
        /**
        * retorna los pilotos ordenados por apellido,
        * pero sin incluir el campo equipo_id (lo oculta)
        * en load() se coloca el modelo que se quiere incluir en la respuesta
        */
        return Piloto::orderBy('puntos','desc')->get()->load('equipo')->makeHidden(['equipo_id']);
    }

    /**
     * Mostrar pilotos ordenados por puntos
     * api/pilotos/ordenados-por-puntos entrega la lista ordenada descendente (por defecto)
     * api/pilotos/ordenados-por-puntos?orden=desc también entrega la lista ordenada descendente
     * api/pilotos/ordenados-por-puntos?orden=asc entrega la lista ordenada ascendente
     */
    public function ordenadosPorPuntos(Request $request)
    {
        $orden = $request->query('orden','desc'); //desc es el valor por defecto
        return Piloto::orderBy('puntos', $orden)->get();
    }


    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $piloto = new Piloto();
        $piloto->nombre = $request->nombre;
        $piloto->apellido = $request->apellido; 
        $piloto->numero = $request->numero;
        $piloto->puntos = $request->puntos;
        $piloto->equipo_id = $request->equipo_id;
        $piloto->save();
        return $piloto;
    }

    /**
     * Display the specified resource.
     */
    public function show(Piloto $piloto)
    {
        return $piloto->load('equipo');
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Piloto $piloto)
    {
        $piloto->nombre = $request->nombre;
        $piloto->apellido = $request->apellido; 
        $piloto->numero = $request->numero;
        $piloto->puntos = $request->puntos;
        $piloto->equipo_id = $request->equipo_id;
        $piloto->save();
        return $piloto;
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Piloto $piloto)
    {
        return $piloto->delete();
    }

}
