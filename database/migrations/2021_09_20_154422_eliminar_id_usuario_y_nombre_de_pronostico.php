<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class EliminarIdUsuarioYNombreDePronostico extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

          Schema::table('pronostico_participante', function (Blueprint $table) {
          $table->dropForeign('pronostico_participante_id_usuario_foreign');
          $table->dropColumn("id_usuario");
      });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('pronostico_participante', function (Blueprint $table) {
            //
        });
    }
}
