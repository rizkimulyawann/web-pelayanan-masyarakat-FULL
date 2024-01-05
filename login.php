
<div class="card" style="padding: 40px; width: 40%; margin: 0 auto; margin-top: 2%;">
<h3 style="text-align: center;" class="orange-text">KANTOR INSPEKTORAT KAB. ACEH UTARA</h3>
<td><center><img src="img/LOGO INSPEKTORAT.png"width="200px:"></center></td>
<br><center><p>Repost by <a href='https://inspektorat.acehutara.go.id/' title='Inspektorat Aceh Utara' target='_blank'>Inspektorat Aceh Utara</a></p></center>

	<form method="POST">
		<div class="input_field">
			<label for="username">Nama Pengguna</label>
			<input id="username" type="text" name="username" required>
		</div>
		<div class="input_field">
			<label for="password">Sandi</label>
			<input id="password" type="password" name="password" required>
		</div>
		<input type="submit" name="login" value="Login" class="btn orange" style="width: 100%;">
	</form>
	<center><a href="registrasi.php"><br></i>Registrasi</a></center>
</div>
<?php 
	if(isset($_POST['login'])){
		$username = mysqli_real_escape_string($koneksi,$_POST['username']);
		$password = mysqli_real_escape_string($koneksi,md5($_POST['password']));
	
		$sql = mysqli_query($koneksi,"SELECT * FROM masyarakat WHERE username='$username' AND password='$password' ");
		$cek = mysqli_num_rows($sql);
		$data = mysqli_fetch_assoc($sql);
	
		$sql2 = mysqli_query($koneksi,"SELECT * FROM petugas WHERE username='$username' AND password='$password' ");
		$cek2 = mysqli_num_rows($sql2);
		$data2 = mysqli_fetch_assoc($sql2);

		if($cek>0){
			session_start();
			$_SESSION['username']=$username;
			$_SESSION['data']=$data;
			$_SESSION['level']='masyarakat';
			header('location:masyarakat/');
		}
		elseif($cek2>0){
			if($data2['level']=="admin"){
				session_start();
				$_SESSION['username']=$username;
				$_SESSION['data']=$data2;
				header('location:admin/');
			}
			elseif($data2['level']=="petugas"){
				session_start();
				$_SESSION['username']=$username;
				$_SESSION['data']=$data2;
				header('location:petugas/');
			}
		}
		else{
			echo "<script>alert('Gagal Login Sob')</script>";
		}

	}
 ?>