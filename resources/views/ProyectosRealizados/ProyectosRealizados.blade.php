<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Proyectos realizados</title>
</head>
<body>
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