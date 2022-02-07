<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddIdParticipanteToPronosticoParticipante extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('pronostico_participante', function (Blueprint $table) {
            $table->integer('id_participante')->after('pronostico');
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
            $table->dropColumn('nombreparticipante');
        });
    }
}
