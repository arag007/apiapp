<?php

namespace App\Http\Controllers;

use App\Models\Participante as Participante;
use Illuminate\Http\Request;

class ParticipanteController extends Controller
{
    /**
     * Retrieve the user for the given ID.
     *
     * @param  int  $id
     * @return Response
     */


    public function mostrarTodosParticipantes()
    {
        return response()->json(Participante::all());
    }

    public function mostrarUno($id)
    {
        return response()->json(Participante::find($id));
    }

    public function create(Request $request)
    {
        $this->validate($request, [
            'nombre' => 'required'
        ]);
        $user = Participante::create($request->all());
        return response()->json($user, 201);
    }
    
}