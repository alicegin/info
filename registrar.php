<?php
$bd = new mysqli("localhost", "id20895239_uaqximeinfo", "Baka baka01$", "id20895239_alumnos");
$semestre=$_GET['semestre'];
$carrera=$_GET['carrera'];
$matricula=$_GET['matricula'];
$existe=false;
if (isset($_GET['aceptar_todo'])) {
    $query_horario = mysqli_query($bd, "SELECT * FROM horario WHERE Semestre='$semestre' AND Carrera='$carrera'");

    while ($horario = mysqli_fetch_array($query_horario)) {
        $idhorario = $horario['IdHorario'];
        $estado = $_GET['estado_' . $idhorario];

        if ($estado == "ALTA") {
            $query_existe=mysqli_query($bd,"SELECT * FROM cargahoraria WHERE Matricula='$matricula' AND IdHorario='$idhorario'");
            while($no_existe=mysqli_fetch_array($query_existe)){
            	$existe=true;
            }
            if(!$existe){
            	$query_inserta = "INSERT INTO cargahoraria (IdHorario, Matricula) VALUES ('$idhorario','$matricula')";
            	$bd->query($query_inserta);
            	$existe=false;
            }
            else{
            	$existe=false;
            }
        } else {
            $query_elimina = "DELETE FROM cargahoraria WHERE IdHorario='$idhorario'";
            $bd->query($query_elimina);
        }
    }

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Materias registradas</title>
	<link rel="stylesheet" type="text/css" href="Cregistrar.css">
</head>
<body>
	
<div class="panel" id="aviso">
  <div>
  <p>Se han registrado los movimientos de materias</p>
  <p>(Pulsa el botón para visualizar el horario)</p>
  <a href="<?php echo"Phorario.php?matricula=$matricula"?>">
    <button>Horario</button>
  </a>
  </div>
</div>

</body>
</html>
<?php
}

?>