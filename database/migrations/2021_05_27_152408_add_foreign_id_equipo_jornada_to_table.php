<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignIdEquipoJornadaToTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('juegojornada', function (Blueprint $table) {
            $table->foreign('id_equipolocal')
                 ->references('id')->on('equipo');
            $table->foreign('id_equipovisitante')
                 ->references('id')->on('equipo');
            $table->foreign('id_jornada')
                 ->references('id')->on('jornada');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('juegojornada', function (Blueprint $table) {
            //
        });
    }
}
