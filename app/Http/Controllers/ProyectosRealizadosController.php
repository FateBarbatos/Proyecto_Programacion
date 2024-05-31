<?php

namespace App\Http\Controllers;

use App\Models\proyectosRealizado;
use Illuminate\Http\Request;

class ProyectosRealizadosController extends Controller
{
    public function inicioProyectosRealizados(){
        $proyectosRealizados = proyectosRealizado::all();
        return view('ProyectosRealizados.ProyectosRealizados',compact('proyectosRealizados'));
    }
}
