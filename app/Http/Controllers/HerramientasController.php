<?php

namespace App\Http\Controllers;

use App\Models\herramienta;
use Illuminate\Http\Request;

class HerramientasController extends Controller
{
    public function inicioHerramientas(){
        $herramientas = herramienta::all();
        return view('Herramientas.Herramientas',compact('herramientas'));
    }
}
