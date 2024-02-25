<!DOCTYPE html>
<html>
<head>
	
	<title>Horario</title>
	<link rel="stylesheet" type="text/css" href="Chorario.css">
</head>
<body>
	<?php
		$matricula=$_GET['matricula'];
		$bd=new mysqli("localhost","id20895239_uaqximeinfo","Baka baka01$","id20895239_alumnos");
		$query=mysqli_query($bd,"SELECT * FROM cargahoraria WHERE Matricula=$matricula");
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



	<div class="horario">
		<div class="alinear_materias">
		<div class="titulo">
			<h2>Hora</h2>
			<h2>Lunes</h2>
			<h2>Martes</h2>
			<h2>Miercoles</h2>
			<h2>Jueves</h2>
			<h2>Viernes</h2>
		</div>
		<span class="mantener">
		<div class="info_mate">
		
	<?php
		while($datos=mysqli_fetch_array($query)){
			$horario=$datos['IdHorario'];
			$horario_query=mysqli_query($bd,"SELECT Materia, IdProfe, Dia, Hora FROM horario WHERE IdHorario=$horario");
			while($datos_horario=mysqli_fetch_array($horario_query)){

				$profe=$datos_horario['IdProfe'];
				$profe_query=mysqli_query($bd,"SELECT * FROM profesores WHERE IdProfe=$profe");
				$datos_profe=mysqli_fetch_array($profe_query);?>
					<div class="alinear">
					<div class="horas">
						<p> <?php echo $datos_horario['Hora']?></p>
					</div>
					<div class="materias">
						<span><?php 
								if($datos_horario['Dia']=="Lunes"){
									echo "<p class='mate'>".$datos_horario['Materia']."</p>";
									echo "<p>".$datos_profe['NombreProfe']." ".$datos_profe['ApellidoProfe']."</p>";
								}
							?>
						</span>
						<span><?php 
								if($datos_horario['Dia']=="Martes"){
									echo "<p class='mate'>".$datos_horario['Materia']."</p>";
									echo "<p>".$datos_profe['NombreProfe']." ".$datos_profe['ApellidoProfe']."</p>";
								}
							?>
						</span>
						<span><?php 
								if($datos_horario['Dia']=="Miércoles"){
									echo "<p class='mate'>".$datos_horario['Materia']."</p>";
									echo "<p>".$datos_profe['NombreProfe']." ".$datos_profe['ApellidoProfe']."</p>";
								}
							?>
						</span>
						<span><?php 
								if($datos_horario['Dia']=="Jueves"){
									echo "<p class='mate'>".$datos_horario['Materia']."</p>";
									echo "<p>".$datos_profe['NombreProfe']." ".$datos_profe['ApellidoProfe']."</p>";
								}
							?>
						</span>
						<span><?php 
								if($datos_horario['Dia']=="Viernes"){
									echo "<p class='mate'>".$datos_horario['Materia']."</p>";
									echo "<p>".$datos_profe['NombreProfe']." ".$datos_profe['ApellidoProfe']."</p>";
								}
							?>
						</span>
					</div>
					</div>
				

				<?php
				

			}
		}
	?>
	</div>
	</span>
	</div>
	</div>
</body>
</html>