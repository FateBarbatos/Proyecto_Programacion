<?php

use App\Http\Controllers\DonacionesRecibidas;
use App\Http\Controllers\DonacionesRecibidasController;
use App\Http\Controllers\EmpleadosController;
use App\Http\Controllers\HerramientasController;
use App\Http\Controllers\ProyectosRealizadosController;
use App\Http\Controllers\TractoresController;
use App\Http\Controllers\WelcomeController;
use Illuminate\Support\Facades\Route;

//rutas para la pagina principal
Route::get("/",[WelcomeController::class,'paginaPrincipal']) -> name('inicio');

//rutas para la pagina de empleados
Route::get("/Empleados",[EmpleadosController::class,'inicioEmpleados'])->name('inicioEmpleados');

//rutas para la pagina de herramientas
Route::get('/Herramientas',[HerramientasController::class,'inicioHerramientas'])->name('inicioHerramientas');

//rutas para la pagina de tractores
Route::get('/Tractores',[TractoresController::class,'inicioTractores'])->name('inicioTractores');

//rutas para la pagina de donaciones recibidas
Route::get('/Donaciones_recibidas',[DonacionesRecibidasController::class,'inicioDonacionesRecibidas'])->name('inicioDonacionesRecibidas');

//rutas para la pagina de proyectos realizados
Route::get('/Proyectos_realizados',[ProyectosRealizadosController::class,'inicioProyectosRealizados']) ->name('inicioProyectosRealizados');