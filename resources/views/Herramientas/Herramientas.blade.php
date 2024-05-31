<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Herramientas</title>
</head>
<body>
    <table border="1px">
        <thead>
            <tr>
                <td>Id</td>
                <td>Tipo de herramienta</td>
                <td>Nombre de la herramienta</td>
                <td>Numero de juegos</td>
            </tr>
        </thead>

        <tbody>
            @foreach ($herramientas as $herramienta)
                <tr>
                    <td>{{$herramienta->id}}</td>
                    <td>{{$herramienta->tipoHerramienta}}</td>
                    <td>{{$herramienta->nombre_herramienta}}</td>
                    <td>{{$herramienta->cantidad_herramienta}}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>