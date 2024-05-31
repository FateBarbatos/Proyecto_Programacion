<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tabla empleados</title>
</head>
<body>
    <table border="1px">
        <thead>
            <tr>
                <td>Id</td>
                <td>Nombre del empleado</td>
                <td>Apellidos del empleado</td>
                <td>DUI del empleado</td>
                <td>Genero del empleado</td>
                <td>Edad empleado</td>
            </tr>
        </thead>

        <tbody>
            @foreach ($empleados as $empleado)
                <tr>
                    <td>{{$empleado->id}}</td>
                    <td>{{$empleado->nombreEmpleado}}</td>
                    <td>{{$empleado->apellidoEmpleado}}</td>
                    <td>{{$empleado->duiEmpleado}}</td>
                    <td>{{$empleado->generoEmpleado}}</td>
                    <td>{{$empleado->edadEmpleado}}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>