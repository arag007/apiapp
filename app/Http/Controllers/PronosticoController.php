<?php

namespace App\Http\Controllers;

use App\Models\Pronosticoparticipante as Pronostico;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class PronosticoController extends Controller
{
    /**
     * Retrieve the user for the given ID.
     *
     * @param  int  $id
     * @return Response
     */


    public function mostrarTodosTorneo()
    {
        return response()->json(Pronostico::all());
    }

    public function mostrarUno($id)
    {
        return response()->json(Pronostico::find($id));
    }

    public function create(Request $request)
    {
        $this->validate($request, [
            'id_juegojornada' => 'required',
            'id_torneoorganizado' => 'required',
            'pronostico' => 'required',
            'total_goles' => 'required'
        ]);
        $pronostico = new Pronostico();
        $pronostico->id_juegojornada= $request->id_juegojornada;
        $pronostico->id_torneoorganizado = $request->id_torneoorganizado;
        $pronostico->id_usuario = $request->id_usuario;
        $pronostico->pronostico = $request->pronostico;
        $pronostico->total_goles = $request->total_goles;
        $pronostico->estatus= 1;

        $pronostico->save();
        return response()->json(array('success' => true, 'pronostico_added' => 1),201);
    }
    public function PronosticoByUsuarios($id)
    {
        //Obtiene todos los torneos que han sido creados por un usuario

        return response()->json(Pronostico::join('usuarios', 'torneo_organizado.id_usuario', '=', 'usuarios.id')
        ->join('torneo_organizado', 'pronostico_participante.id_torneoorganizado', '=', 'torneo_organizado.id')
        ->join('torneo', 'torneo_organizado.id_torneo', '=', 'torneo.id')
        ->select('pronostico',DB::raw("CONCAT(torneo.nombre,' ', torneo.temporada,' ',torneo.anio) as temporada"), 'usuarios.nombre as creador', 'pronostico_participante.estatus as estatus')
        ->where('pronostico_participante.id_participante',$id)
        ->get());
    }
    public function update($id, Request $request)
    {
        $Torneo = Pronostico::findOrFail($id);
        $Torneo->update($request->all());

        return response()->json($Torneo, 200);
    }
}
