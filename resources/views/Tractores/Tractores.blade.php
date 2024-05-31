<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tractores</title>
</head>
<body>
    <table border="1px">
        <thead>
            <tr>
                <td>Id</td>
                <td>Tipo de vehiculo tractor</td>
                <td>Nombre del vehiculo</td>
                <td>Numero de matricula del vehiculo</td>
                <td>Numero de placa</td>
            </tr>
        </thead>

        <tbody>
            @foreach ($tractores as $tractor)
                <tr>
                    <td>{{$tractor->id}}</td>
                    <td>{{$tractor->tipoTractor}}</td>
                    <td>{{$tractor->nombreTractor}}</td>
                    <td>{{$tractor->numeroMatricula}}</td>
                    <td>{{$tractor->numeroPlaca}}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>