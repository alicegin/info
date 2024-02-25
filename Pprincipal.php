<!DOCTYPE html>
<html>
<head>
	<title>INICIO</title>
	<link rel="stylesheet" href="Cprincipal.css">
</head>
<body>
	
<?php
$bd = new mysqli("localhost","id20895239_uaqximeinfo","Baka baka01$","id20895239_alumnos");
$matricula=$_GET['matricula'];
$query_alumnos=mysqli_query($bd,"SELECT * FROM alumnos WHERE Matricula=$matricula");
	$info=mysqli_fetch_array($query_alumnos);
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

<div class="Info_alumno">
	<div class="Imagen_alumno">
		<img src="<?php echo $info['Imagen'];?>">

	<div class="detalles">
		<h1>
		<?php echo $info['Facultad']; ?>
		</h1>
		<p class="carrera"><?php echo $info['Carrera']; ?></p>
		<p class="semestre"><?php echo $info['Semestre']; ?></p>

	</div>
	</div>
	
		
	<table>
		<tr>
			<td><h3>Nombre:</h3></td>
			<td><?php echo $info['Nombre']. " ".$info['Apellido'];?></td>
			<td></td>
			<td><h3>Expediente:</h3></td>
			<td><p><?php echo $info['Matricula'];?></p></td>
		</tr>
		<tr>
			<td><h3>Correo:</h3></td>
			<td><p><?php echo $info['Correo'];?></p></td>
			<td></td>
			<td></td>
			<td></p></td>
		</tr>
	
	</table>
</div>
</body>
</html>