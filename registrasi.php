<!DOCTYPE html>
<html>
<head>
	<title>Sistem Informasi Pengaduan Masyarakat</title>
	<link rel="shortcut icon" href="img/LOGO INSPEKTORAT.png">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

	<link href="//cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/css/materialize.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/js/materialize.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

	<link rel="stylesheet" type="text/css" href="css/style.css">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">

</head>
<body style="background: url(img/bg.jpg); background-size: cover;">

	<div class="container">


		<div class="card" style="padding: 40px; width: 40%; margin: 0 auto; margin-top: 2%;">
		<h3 style="text-align: center;" class="orange-text">KANTOR INSPEKTORAT KAB. ACEH UTARA</h3>
		<td><center><img src="img/LOGO INSPEKTORAT.png"width="200px:"></center></td>
		<br><center><p>Repost by <a href='https://inspektorat.acehutara.go.id/' title='Inspektorat Aceh Utara' target='_blank'>Inspektorat Aceh Utara</a></p></center>

			<form method="POST">
				<div class="input_field">
					<label for="nik">NIK</label>
					<input id="nik" type="number" name="nik">
				</div>
				<div class="input_field">
					<label for="nama">Nama</label><br>
					<input id="nama" type="text" name="nama">
				</div>
				<div class="input_field">
					<label for="username">Username</label>		
					<input id="username" type="text" name="username">
				</div>
				<div class="input_field">
					<label for="password">Password</label>
					<input id="password" type="password" name="password">
				</div>
				<div class="input_field">
					<label for="telp">Telp</label>
					<input id="telp" type="number" name="telp">
				</div>
				
				<input type="submit" name="simpan" value="registrasi" class="btn orange" style="width: 100%;">
			</form>
			<?php 
				include('conn/koneksi.php');

				
				if(isset($_POST['simpan'])){
					if(isset($_POST['password'])){
						$password = md5($_POST['password']);
						$query=mysqli_query($koneksi,"INSERT INTO masyarakat VALUES ('".$_POST['nik']."','".$_POST['nama']."','".$_POST['username']."','".$password."','".$_POST['telp']."')");
						if($query){
							echo "<script>alert('Data Tesimpan')</script>";
							echo "<script>location='index.php';</script>";
					}
				}
			}
			 ?>
			<center><a href="index.php"><br></i>Login</a></center>
		</div>

	</div>
</body>
</html>


