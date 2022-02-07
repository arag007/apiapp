<?php

namespace App\Http\Controllers;

use App\Models\Torneoorganizado as Torneo;
use Illuminate\Http\Request;

class TorneoorganizadoController extends Controller
{
    /**
     * Retrieve the user for the given ID.
     *
     * @param  int  $id
     * @return Response
     */


    public function mostrarTodosTorneo()
    {
        return response()->json(Torneo::all());
    }

    public function mostrarUno($id)
    {
        return response()->json(Torneo::find($id));
    }

    public function create(Request $request)
    {
        $this->validate($request, [
            'nombre' => 'required',
            'id_torneo' => 'required'
        ]);
        $torneo = Torneo::create($request->all());
        return response()->json($torneo, 201);
    }
    public function byUsers($id)
    {
        //Obtiene todos los torneos que han sido creados por un usuario

        return response()->json(Torneo::join('usuarios', 'torneo_organizado.id_usuario', '=', 'usuarios.id')
        ->join('torneo', 'torneo_organizado.id_torneo', '=', 'torneo.id')
        ->select('torneo_organizado.id', 'usuarios.nombre as usuario', 'torneo_organizado.nombre as nombretorneo',
        'torneo_organizado.codigo as codigo','torneo.nombre as torneo', 'torneo.temporada as temporada', 'torneo.anio as año', 'torneo_organizado.image', 
        'torneo_organizado.estatus')->where('usuarios.id',$id)
        ->get());
    }
    public function update($id, Request $request)
    {
        $Torneo = Torneo::findOrFail($id);
        $Torneo->update($request->all());

        return response()->json($Torneo, 200);
    }
}
