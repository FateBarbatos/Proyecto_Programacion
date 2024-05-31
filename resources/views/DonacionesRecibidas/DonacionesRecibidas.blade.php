<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Donaciones recibidas</title>
</head>
<body>
    <table border="1px">
        <thead>
            <tr>
                <td>Id</td>
                <td>Fecha de la donacion</td>
                <td>Cantidad donada</td>
                <td>Empleado que recibio</td>
            </tr>
        </thead>

        <tbody>
            @foreach ($donacionesRecibidas as $donacionRecibida)
                <tr>
                    <td>{{$donacionRecibida->id}}</td>
                    <td>{{$donacionRecibida->fechaDonacion}}</td>
                    <td>{{$donacionRecibida->cantidadDonacion}}</td>
                    <td>{{$donacionRecibida->idEmpleadoReceptor}}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
