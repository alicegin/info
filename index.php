<?php
	$bd=new mysqli("localhost","id20895239_uaqximeinfo","Baka baka01$","id20895239_alumnos");
	if(isset($_POST['matricula'])){
		$matricula=$_POST['matricula'];
		$nip=$_POST['nip'];
		$correo=false;

		$query=mysqli_query($bd,"SELECT Matricula, Password FROM alumnos");
		$encontrado=false;
		while($datos=mysqli_fetch_array($query)){
			if($datos['Matricula']==$matricula && $datos['Password']==$nip){
				header("location: http://localhost/proyecto/Pprincipal.php?matricula=$matricula");
				$encontrado=true;
        		break;
			}
		}
		if(!$encontrado){
			echo '<script language="javascript">alert("Información incorrecta, vuelve a intentarlo");</script>';
	
		}
	}

	if(isset($_GET['correo'])){
		$correo=$_GET['correo'];
		if($correo){
			echo "<script language='javascript'>
						alert('Correo enviado');
						</script>";
			$correo=false;

		}
	}

	?>
<!DOCTYPE html>
<html>
<head>

	<title>Portal</title>
	<link rel="stylesheet" type="text/css" href="Cindex.css">
</head>
<body>
	<header>
		<p>PORTAL ESCUELA</p>
	</header>
<form name="formulario" action="index.php" method="post">
		<div class="imagen">
				<img src="https://media.licdn.com/dms/image/C560BAQFU3K8-1GuevQ/company-logo_200_200/0/1519862345426?e=2147483647&v=beta&t=YSLZst-kVtuHmGRns4tafn6r0Za3xin9pWCg2RN0wU0">
			</div>
	<div class="Informacion">
		<p>Matricula</p>
   		<input type="text" name="matricula" id="matricula">
    	<P>NIP</P>
    	<input type="text" name="nip" id="nip">
    </div>
    <div class="Opciones">
    	<input type="submit" value="ENTRAR" id="entrar">
    	<a href="Precuperar.php">Recuperar NIP</a>
	</div>
  </form> 
</body>
</html>