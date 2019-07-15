<?php
	error_reporting(E_ALL);
	ini_set('display_errors', 0);
	require_once('dbConnect.php');

	$kdUsers			= $_POST['kdUsers'];
	$username			= $_POST['username'];
	$password			= $_POST['password'];
	
	$no_kamar			= $_POST['noKamar'];
	$blok_kamar			= $_POST['blokKamar'];
	$nama				= $_POST['nama'];
	$tanggal_lahir		= $_POST['tanggalLahir'];
	$jenis_kelamin		= $_POST['jenisKelamin'];
	$alamat				= $_POST['alamat'];
	
	$kd_tombol			= $_POST['kdTombol'];
	$sekarang			= date('Y-m-d');
	
	if($kd_tombol=='0'){
		$sql = "INSERT INTO users (kdUsers, tglInput, nama, username, password, level, statusDelete) VALUES ('', '$sekarang', '$nama', '$username', '$password', '2', '0')";
		
		$val = "Diinput";
		
	}else{
		if($kd_tombol=='delete'){
			$sql = "UPDATE users SET statusDelete = '1' WHERE kdUsers = '$kdUsers'";
			$val = "Didelete";
		} else {
			$sql = "UPDATE users SET nama = '$nama', password = '$password' WHERE kdUsers = '$kdUsers'";
			$sql_kamar = "UPDATE kamar SET blokKamar = '$blok_kamar', noKamar = '$no_kamar', tanggalLahir = '$tanggal_lahir', jenisKelamin = '$jenis_kelamin', alamat = '$alamat' WHERE kdKamar = '$kd_tombol'";
			mysqli_query($con, $sql_kamar);
			$val = "Diedit";
		}
	}
	
	mysqli_query($con, $sql);
	
	if($kd_tombol=='0'){
		$query_max	= "SELECT * FROM users";
		$cek_max	= mysqli_query($con, $query_max);
		$get_max	= mysqli_num_rows($cek_max);
		$last_id	= $get_max;
		
		$sql_kamar = "INSERT INTO kamar (kdKamar, tglInput, kdUsers, blokKamar, noKamar, tanggalLahir, jenisKelamin, alamat, statusDelete) VALUES ('', '$sekarang', 'LAST_INSERT_ID()', '$blok_kamar', '$no_kamar', '$tanggal_lahir', '$jenis_kelamin', '$alamat', '0')";
		mysqli_query($con, $sql_kamar);
		
	}
	echo "Kamar Berhasil $val";
?>