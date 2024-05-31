<?php

namespace App\Http\Controllers;

use App\Models\donacionesRecibida;
use Illuminate\Http\Request;

class DonacionesRecibidasController extends Controller
{
    public function inicioDonacionesRecibidas(){
        $donacionesRecibidas =donacionesRecibida::all();
        return view('DonacionesRecibidas.DonacionesRecibidas',compact('donacionesRecibidas'));
    }
}
