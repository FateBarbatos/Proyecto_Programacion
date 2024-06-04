<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Proyectos realizados</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary" class = "azul_oscuro">
        <div class="container-fluid" styler ="">
          <a class="navbar-brand" href="{{Route("inicio")}}">Inicio</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="{{Route('inicioEmpleados')}}">Empleados</a>
              </li>

              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="{{Route('inicioHerramientas')}}">Herramientas</a>
              </li>

              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="{{Route('inicioTractores')}}">Tractores</a>
              </li>

              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="{{Route('inicioDonacionesRecibidas')}}">Donaciones recibidas</a>
              </li>

              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="{{Route('inicioProyectosRealizados')}}">Proyectos realizados</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>

    <table border="1px">
        <thead>
            <tr>
                <td>Id</td>
                <td>Herramienta usada</td>
                <td>Tractor utilizado</td>
                <td>Nombre del proyecto</td>
            </tr>
        </thead>

        <tbody>
            @foreach ($proyectosRealizados as $proyectoRealizados)
                <tr>
                    <td>{{$proyectoRealizados->id}}</td>
                    <td>{{$proyectoRealizados->idHerramienta}}</td>
                    <td>{{$proyectoRealizados->idMaquina}}</td>
                    <td>{{$proyectoRealizados->nombreProyecto}}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>