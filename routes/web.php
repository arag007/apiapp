  <?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});


$router->group(['prefix' => 'api'], function () use  ($router) {
  $router->post('login', 'AuthController@login');
  $router->post('register','AuthController@register');


});

$router->group(['prefix' => 'api','middleware' => 'auth'], function () use ($router) {

    $router->post('refresh', 'AuthController@refresh');
    $router->post('me', 'AuthController@me');
    $router->post('logout','AuthController@logout');
    $router->get('usuarios',  ['uses' => 'UsuariosController@mostrarTodosUsuarios']);
    $router->get('usuarios/{id}', ['uses' => 'UsuariosController@mostrarUno']);
    $router->post('usuarios/{id}', ['uses' => 'UsuariosController@miPerfil']);
    $router->post('usuarios', ['uses' => 'UsuariosController@create']);
    $router->delete('usuarios/{id}', ['uses' => 'UsuariosController@delete']);
    $router->put('usuarios/{id}', ['uses' => 'UsuariosController@update']);
  });
  $router->group(['prefix' => 'api','middleware' => 'auth'], function () use ($router) {

    $router->get('participantes',  ['uses' => 'ParticipanteController@mostrarTodosParticipantes']);
    $router->get('participantes/{id}', ['uses' => 'ParticipanteController@mostrarUno']);
    $router->post('participantes', ['uses' => 'ParticipanteController@create']);
    $router->delete('participantes/{id}', ['uses' => 'ParticipanteController@delete']);
    $router->put('participantes/{id}', ['uses' => 'ParticipanteController@update']);
  });

  $router->group(['prefix' => 'api','middleware' => 'auth'], function () use ($router) {

    //ruta que obtiene todos los torneos creados al momento
    $router->get('mitorneo',  ['uses' => 'TorneoorganizadoController@mostrarTodosTorneo']);
    //ruta que trae todo los torneos en los   que participa
    $router->get('mitorneo/{id}', ['uses' => 'TorneoorganizadoController@PronosticoByUsuarios']);
    //ruta que crea un torneo
    $router->post('mitorneo', ['uses' => 'TorneoorganizadoController@create']);
    //Busca codigo
    $router->get('mitorneo/{id}', ['uses' => 'TorneoorganizadoController@buscabycodigo']);
    $router->delete('mitorneo/{id}', ['uses' => 'TorneoorganizadoController@delete']);
    $router->put('mitorneo/{id}', ['uses' => 'TorneoorganizadoController@update']);
  });

  $router->group(['prefix' => 'api','middleware' => 'auth'], function () use ($router) {

    //ruta que trae todo los torneos en los   que participa
    $router->get('mipronostico/{id}', ['uses' => 'PronosticoController@PronosticoByUsuarios']);

  });

  $router->group(['prefix' => 'api','middleware' => 'auth'], function () use ($router) {

    //ruta que obtiene todos los torneos creados al momento
    $router->get('mitorneo',  ['uses' => 'TorneoorganizadoController@mostrarTodosTorneo']);
    //ruta que trae todo los torneos creados por un usuario registrado
    $router->get('mitorneo/{id}', ['uses' => 'TorneoorganizadoController@byUsers']);
    //ruta que crea un torneo
    $router->post('pronostico', ['uses' => 'PronosticoController@create']);
  });
