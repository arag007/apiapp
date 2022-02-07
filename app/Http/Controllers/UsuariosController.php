<?php

namespace App\Http\Controllers;

use App\Models\User as Users;
use App\Models\Torneoorganizado as Torneo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;


class UsuariosController extends Controller
{

    /**
     * Retrieve the user for the given ID.
     *
     * @param  int  $id
     * @return Response
     */


    public function mostrarTodosUsuarios()
    {
        return response()->json(Users::all());
    }

    public function miPerfil($id)
    {
        //Obtiene todos los torneos que han sido creados por un usuario

        return response()->json(Torneo::join('usuarios', 'torneo_organizado.id_usuario', '=', 'usuarios.id')
        ->select('usuarios.nombre as nombre', 'usuarios.email as email', 'torneo_organizado.nombre as Torneos')->where('usuarios.id',$id)
        ->get());
    }

    public function mostrarUno($id)
    {
        return response()->json(Users::find($id));
    }

    public function create(Request $request)
    {

        $this->validate($request, [
            'nombre' => 'required',
            'email' => 'required|email|unique:usuarios',
            'password' => 'required|confirmed|min:6'
        ]);
        $user = new Users();
        $user->nombre= $request->nombre;
        $user->email = $request->email;
        $user->password= Hash::make($request->password);
        $user->estatus= 1;

        $user->save();
        return response()->json(array('success' => true, 'user_added' => 1),201);
    }
    public function update($id, Request $request)
    {
        $User = Users::findOrFail($id);
        $User->update($request->all());

        return response()->json($User, 200);
    }
}
