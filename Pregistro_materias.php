<!DOCTYPE html>
<html>
<head>
	<title>Registro de materias</title>
	<link rel="stylesheet" href="Cregistro_materias.css">
</head>
<body>
	<?php
	$bd=new mysqli("localhost","id20895239_uaqximeinfo","Baka baka01$","id20895239_alumnos");
	$matricula=$_GET['matricula'];
	//-------------------------INFORMACION DEL ALUMNO-------------------
	$query=mysqli_query($bd,"SELECT Semestre, Carrera FROM alumnos WHERE Matricula=$matricula");
	$datos=mysqli_fetch_array($query);

	$semestre=$datos['Semestre'];
	$carrera=$datos['Carrera'];
	?>

<header class="header">
		<div class="container">
		<div class="btn-menu">
			<label for="btn-menu">☰</label>
		</div>
			<div class="logo">
				<h1>Portal Escuela</h1>
			</div>
			<nav class="menu">
				<a href="<?php echo"Pprincipal.php?matricula=$matricula"?>">Inicio</a>
				<a href="<?php echo"Pregistro_materias.php?matricula=$matricula"?>">Alta de materias</a>
				<a href="<?php echo"Phorario.php?matricula=$matricula"?>">Horario</a>
			</nav>
		</div>
	</header>
	<div class="capa"></div>


<!--Menú lateral	--------------->
<input type="checkbox" id="btn-menu">
<div class="container-menu">
	<div class="cont-menu">
		<nav>
			<a href="<?php echo"Pprincipal.php?matricula=$matricula"?>">Inicio</a>
			<a href="<?php echo"Pregistro_materias.php?matricula=$matricula"?>">Alta de materias</a>
			<a href="<?php echo"Phorario.php?matricula=$matricula"?>">Horario</a>
			<a href="<?php echo"index.php"?>">Cerrar sesión</a>
		</nav>
		<label for="btn-menu">✖️</label>
	</div>
</div>



<form name="formulario" action="registrar.php" method="get">
<div class="materias_de">
			<h3><?php echo $semestre?></h3>
			<h1><?php echo $carrera?></h1>
			
	<input type="submit" name="aceptar_todo" value="ACEPTAR" id="aceptar_todo">
		</div>
	<?php
	//-------------------INFORMACION DE LOS HORARIOS DISPONIBLES PARA EL ALUMNO-----------------
	$query_horario=mysqli_query($bd,"SELECT * FROM horario WHERE Semestre='$semestre' AND Carrera='$carrera'");
	while ($horario=mysqli_fetch_array($query_horario)) {
			$profe=$horario['IdProfe'];
			$idhorario_existente=$horario['IdHorario'];
			$query_profe=mysqli_query($bd,"SELECT * FROM profesores WHERE IdProfe=$profe");
			$datos_profe=mysqli_fetch_array($query_profe);

			//cuando este en ALTA debe insertar en la base de datos, de lo contrario, debe eliminarlo de la base de datos (IdHorario se inserta en carga horaria)
	//-------------------------INFORMACIÓN DE LA CARGA HORARIA---------
	//para saber si ya está dada de alta previamente
		$query_cargahoraria=mysqli_query($bd,"SELECT IdHorario FROM cargahoraria WHERE IdHorario=$idhorario_existente");
		$existente=mysqli_fetch_array($query_cargahoraria);

		$cambia="ALTA";
		$ncambia="BAJA";
		if(!$existente){
			$color="aliceblue";
			$cambia="BAJA";
			$ncambia="ALTA";
		}
		else{
			$color="skyblue";
		}
			?>

		<div class="opcion" style="background-color: <?php echo $color; ?>;">
		<div class="detalles_opcion">
		<h3><?php echo $horario['Materia'];?></h3>
		<p><?php echo $datos_profe['NombreProfe']." ". $datos_profe['ApellidoProfe'];?></p>
		<p><?php echo $horario['Dia'];?></p>
		<p><?php echo $horario["Hora"];?></p>
		</div>
		
			<div class="seleccion">
			<select name="estado_<?php echo $idhorario_existente; ?>" id="estado">
				<option name="accion1"><?php echo $cambia?></option>
				<option name="accion2"><?php echo $ncambia?></option>
			</select>
			</div>
			</div>
			<input type="hidden" name="idhorario" value="<?php echo $idhorario_existente; ?>">
			<input type="hidden" name="semestre" value="<?php echo $semestre; ?>">
			<input type="hidden" name="carrera" value="<?php echo $carrera; ?>">
			<input type="hidden" name="matricula" value="<?php echo $matricula; ?>">
			
	<?php
	}
	?>
	
</form>
	
</body>
</html>