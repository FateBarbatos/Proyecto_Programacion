<?php

namespace App\Http\Controllers;

use App\Models\empleado;
use Illuminate\Http\Request;

class EmpleadosController extends Controller
{
    public function inicioEmpleados(){
        $empleados = empleado::all();
        return view("Empleados.Empleados",compact('empleados'));
    }
}
