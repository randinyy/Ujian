<?php
session_start();

if (!isset($_SESSION["login"])){
	header("Location: login.php");
}
require 'functions.php';

//penghalamanan
//konfigurasi
$jumlahDataPerHalaman = 5;
$jumlahData =count(query("SELECT * FROM novel"));
$jumlahHalaman =ceil($jumlahData / $jumlahDataPerHalaman);
$halamanAktif = (isset($_GET["halaman"]))? $_GET["halaman"] :1;
$awalData = ($jumlahDataPerHalaman * $halamanAktif) - $jumlahDataPerHalaman;
//


$mahasiswa =query ("SELECT * FROM novel LIMIT $awalData, $jumlahDataPerHalaman");

//tombol cari di tekan
if (isset($_POST["cari"])){
	$mahasiswa = cari($_POST["keyword"]);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>DATA PEMESAN</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
    
    <div class="container">
<h1 class="text-center card-header bg-primary text-white">TOKO BUKU DINI</h1>
<br>
<br>
    <form action="" method="post">
    <input type="text" name="keyword" autofocus placeholder="Masukan Kata Kunci" id="keyword">
        <button type="submit" name="cari" id="tombol-cari" class="btn btn-primary ">Cari</button>
        <a href="tambah.php" class="btn btn-primary">TAMBAH</a>
        <a href="logout.php" class="btn btn-primary">KELUAR</a>
	</form>
    <br>
    <br>
    <table class="table table-striped">

            <tr  class="primary">
                <th>NO.</th>
                <th>AKSI</th>
                <th>JUDUL BUKU</th>
                <th>PENULIS BUKU</th>
                <th>TAHUN TERBIT</th>
                <th>JUMLAH BELI</th>
                <th> HARGA BUKU</th>
                <th>TOTAL HARGA</th>
            </tr>
<?php $i =1; ?>
<?php foreach ( $mahasiswa as $row) : ?>           
            <tr>
                <td><?= $i ?></td>
                <td>
                	<a href="ubah.php?id=<?= $row ["id"]; ?>">Ubah</a>
					<a href="hapus.php?id=<?= $row["id"]; ?>" onclick="return confirm('Yakin');">Hapus</a>
                </td>
                <td><?= $row["judul_buku"]; ?></td>
                <td><?= $row["penulis_buku"]; ?></td>
                <td><?= $row["tahun_terbit_buku"]; ?></td>
                <td><?= $row["jumlah_beli"]; ?></td>
                <td><?= $row["harga"]; ?></td
                ><td><?= $row["total_harga"]; ?></td

            </tr>
<?php $i++; ?>
<?php endforeach; ?>

        </table>
</div>
<script src="js/bootstrap.bundle.min.js"></script>
</body>

</html>