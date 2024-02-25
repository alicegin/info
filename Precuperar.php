<!DOCTYPE html>
<html>
<head>
	<title>Recuperar NIP</title>
	<link rel="stylesheet" type="text/css" href="Crecuperar.css">
</head>
<body>
	<?php
	if(isset($_POST['matricula_recupe'])&&isset($_POST['correo_recupe'])){
		$matricula=$_POST['matricula_recupe'];
		$correo=$_POST['correo_recupe'];
		$coincide=false;

		$bd=new mysqli("localhost","id20895239_uaqximeinfo","Baka baka01$","id20895239_alumnos");
		$query=mysqli_query($bd,"SELECT Matricula, Correo FROM alumnos");

		while($datos=mysqli_fetch_array($query)){

			if($datos['Matricula']==$matricula && $datos['Correo']==$correo){
				$coincide=true;
				header("Location:http://localhost/proyecto/index.php?correo=true");
				break;
			}
		}
		if(!$coincide){
			echo "<script language='javascript'>
						alert('Información incorrecta, vuelve a intentar');
						</script>";
				$coincide=false;
		}
	}
	?>
	<header>
		<p>PORTAL ESCUELA</p>
	</header>
		<form method="post" action="Precuperar.php">
			<div class="imagen">
				<img src="https://i.pinimg.com/564x/90/fe/96/90fe969e3710177918e51f6f09adf2f1.jpg">
			</div>
				<div class="Informacion">
					<h1> RECUPERAR CONTRASENA</h1>
					<p>Matricula</p>
					<input type="text" name="matricula_recupe" id="usuario"/>
					<p>Correo</p>
					<input type="text" name="correo_recupe" id="correo_busca"/>
				</div>
					<div class="Opciones">
						<input type="submit" name="Aceptar" value="Aceptar" id="mandar" />
					</div>
				</div>
		</form>
</body>
</html>