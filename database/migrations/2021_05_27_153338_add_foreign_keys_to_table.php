<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('pronostico_participante', function (Blueprint $table) {
            $table->foreign('id_juegojornada')
                 ->references('id')->on('juegojornada');
            $table->foreign('id_torneoorganizado')
                 ->references('id')->on('torneo_organizado');
            $table->foreign('id_usuario')
                 ->references('id')->on('usuarios');
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
