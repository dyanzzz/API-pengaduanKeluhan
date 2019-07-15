<?php
	error_reporting(E_ALL);
	ini_set('display_errors', 0);
	require_once('dbConnect.php');

	$kdUsers	= $_POST['kdUsers'];
	$kdKamar	= $_POST['kdKamar'];
	$kdKeluhan	= $_POST['kdKeluhan'];
	$keluhan	= $_POST['keluhan'];
	
	$kd_tombol	= $_POST['kdTombol'];
	$sekarang	= date('Y-m-d');
	
	if($kd_tombol=='0'){
		$sql = "INSERT INTO keluhan (kdKeluhan, tanggalKeluhan, kdUsers, kdKamar, keluhan, statusKeluhan, statusDelete) VALUES ('', '$sekarang', '$kdUsers', '$kdKamar', '$keluhan', 'Menunggu', '0')";
		$val = "Diinput";
		
	}else{
		if($kd_tombol=='delete'){
			$sql = "UPDATE keluhan SET statusDelete = '1' WHERE kdKeluhan = '$kdKeluhan'";
			$val = "Didelete";
		} else {
			$sql = "UPDATE keluhan SET statusKeluhan = '$kd_tombol' WHERE kdKeluhan = '$kdKeluhan'";
			$val = "Diupdate";
		} 
	}
	
	mysqli_query($con, $sql);
	echo "Keluhan Berhasil $val";
?>