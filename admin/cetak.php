<section id="header-kop">
		<div class="container-fluid">
			<table class="table table-borderless">
				<tbody>
					<tr>
						<td class="text-left" width="20%">
							<img src="LOGO ACEH UTARA.png" alt="logo-dkm" width="90" />
						</td>
						<td class="text-center" width="60%">
						<center><b>PEMERINTAH KABUPATEN ACEH UTARA</b><br><center>
						<b>INSPEKTORAT</b><br>
						Jl.Syech Syamsuddin As Summatrani Mon Geudong Lhokseumawe<br>
						Kode Pos 24351 TELP. (0645) 43718 FAX. 630100<br>
						Email : inspektorat.acehutara.go.id, Website : inspektorat.acehutara.go.id<br>
						<td class="text-right" width="20%">
							<img src="Logo Pengaduan.png" alt="logo-dkm" width="100" height="85"/>
						</td>
					</tr>
				</tbody>
			</table>
			<hr class="line-top"/>
		</div>
	</section>
	<h2 style="text-align: center;">Laporan Layanan Pengaduan Masyarakat</h2>
<table border="2" style="width: 100%; height: 10%;">
	<tr style="text-align: center;">
		<td>No</td>
		<td>NIK Pelapor</td>
		<td>Nama Pelapor</td>
		<td>Nama Petugas</td>
		<td>Tanggal Masuk</td>
		<td>Tanggal Ditanggapi</td>
		<td>Status</td>
	</tr>
	<?php 
		include '../conn/koneksi.php';
		$no=1;
		$query = mysqli_query($koneksi,"SELECT * FROM pengaduan INNER JOIN masyarakat ON pengaduan.nik=masyarakat.nik INNER JOIN tanggapan ON tanggapan.id_pengaduan=pengaduan.id_pengaduan INNER JOIN petugas ON tanggapan.id_petugas=petugas.id_petugas ORDER BY tgl_pengaduan DESC");
		while ($r=mysqli_fetch_assoc($query)) { ?>
		<tr>
			<td><?php echo $no++; ?></td>
			<td><?php echo $r['nik']; ?></td>
			<td><?php echo $r['nama']; ?></td>
			<td><?php echo $r['nama_petugas']; ?></td>
			<td><?php echo $r['tgl_pengaduan']; ?></td>
			<td><?php echo $r['tgl_tanggapan']; ?></td>
			<td><?php echo $r['status']; ?></td>
		</tr>
	<?php	}
	 ?>
</table>
<script type="text/javascript">
	window.print();
</script>