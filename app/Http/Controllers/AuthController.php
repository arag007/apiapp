<?php

namespace App\Http\Controllers;

use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Exceptions\HttpResponseException; 
use Laravel\Lumen\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\User as Users;


class AuthController extends Controller
{

  
    protected function buildFailedValidationResponse(Request $request, array $errors) {
        return array("statuscode"=> 406 , "errores" =>$errors);
    }
  
    public function register(Request $request)
    {

        
        
        $this->validate($request, [
            'nombre' => 'required',
            'email' => 'required|email|unique:usuarios',
            'password' => 'required|min:6'
        ],[
            'required' => 'El campo :attribute es requerido',
            'email' => 'Ingresa un :attribute valido',
            'unique' => 'Este :attribute ya ha sido usado',
            'min' => 'El :attribute debe contener minimo  :min caracteres'
        ]);
        $user = new Users();
        $user->nombre= $request->nombre;
        $user->email = $request->email;
        $user->password=app('hash')->make($request->password);
        $user->estatus= 1;
        
        
        try{
            if ($user->save()) {
                return response()->json(array('mensaje' => "Usuario registrado con exito"),201);
            }
        }
        catch(\Exception $e){
            return response()->json(array('errores' => $e->getMessage()),422);
        }
        
        // return response()->json(array('success' => true, 'user_added' => 1),201);
    }
    

    public function login(Request $request){


        $this->validate($request, [
            'email' => 'required|email',
            'password' => 'required'
        ]);

        
        $credentials = $request->only(['email', 'password']);    
        if (! $token = Auth::attempt($credentials)) {
            // Login has failed
            return response()->json(['message' => 'Unauthorized'], 401);
        }    
          
          return $this->respondWithToken($token);

    }

/**
   * Log the user out (Invalidate the token). Requires a login to use as the
   * JWT in the Authorization header is what is invalidated
   *
   * @return \Illuminate\Http\JsonResponse
   */
  public function logout() {
    auth()->logout();
    return response()->json(['message' => 'User successfully signed out']);
  }  /**
   * Refresh the current token.
   *
   * @return \Illuminate\Http\JsonResponse
   */
  public function refresh() {
    return $this->respondWithToken( auth()->refresh() );
  }  /**
   * Helper function to format the response with the token.
   *
   * @return \Illuminate\Http\JsonResponse
   */
  private function respondWithToken($token){
    return response()->json([
      'token' => $token,
      'token_type' => 'bearer',
      'expires_in' => Auth::factory()->getTTL() * 60,
      'User' => auth()->user()
    ], 200);
    }


    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function me()
    {
        return response()->json(auth()->user());
    }    
   
}
