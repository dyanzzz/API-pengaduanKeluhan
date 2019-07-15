<?php
error_reporting(E_ALL);
ini_set('display_errors', 0);
 	require_once('dbConnect.php');
	
	$strKdUsers		= $_POST['kdUsers'];
	$strKdKamar		= $_POST['kdKamar'];
	$strKdTombol	= $_POST['kdTombol'];
	$sekarang	= date('Y-m-d');
	
	$result = array();
	
	if($strKdTombol == "input"){
	
		$password			= $_POST['password'];
		$nama				= $_POST['nama'];
		$tanggal_lahir		= $_POST['tanggalLahir'];
		$jenis_kelamin		= $_POST['jenisKelamin'];
		$alamat				= $_POST['alamat'];
		
		$sql = "UPDATE users SET nama='$nama', password='$password' WHERE kdUsers='$strKdUsers'";
		mysqli_query($con, $sql);
		
		$sql_kamar = "UPDATE kamar SET tanggalLahir='$tanggal_lahir', jenisKelamin='$jenis_kelamin', alamat='$alamat' WHERE kdKamar='$strKdKamar'";
		mysqli_query($con, $sql_kamar);
		
		echo "Profil Berhasil Diupdate";
		
	} else {
		
		$sql	= "SELECT * FROM users, kamar WHERE users.kdUsers=kamar.kdUsers AND users.statusDelete='0' AND kamar.statusDelete='0' AND users.kdUsers='$strKdUsers'";
		$sql_keluhan_menunggu	= "SELECT * FROM keluhan WHERE statusDelete='0' AND statusKeluhan='Menunggu' AND kdUsers='$strKdUsers'";
		$sql_keluhan_proses		= "SELECT * FROM keluhan WHERE statusDelete='0' AND statusKeluhan='Proses' AND kdUsers='$strKdUsers'";
		$sql_keluhan_selesai	= "SELECT * FROM keluhan WHERE statusDelete='0' AND statusKeluhan='Selesai' AND kdUsers='$strKdUsers'";
		$r		= mysqli_query($con, $sql);
		$r2		= mysqli_query($con, $sql_keluhan_menunggu);
		$r3		= mysqli_query($con, $sql_keluhan_proses);
		$r4		= mysqli_query($con, $sql_keluhan_selesai);
		$jumlah1	= mysqli_num_rows($r2);
		$jumlah2	= mysqli_num_rows($r3);
		$jumlah3	= mysqli_num_rows($r4);
		$row	= mysqli_fetch_array($r);
		
		$kdUsers		= $row['kdUsers'];
		$kdKamar		= $row['kdKamar'];
		$username		= $row['username'];
		$password		= $row['password'];
		$blokKamar		= $row['blokKamar'];
		$noKamar		= $row['noKamar'];
		$nama			= $row['nama'];
		
		$menunggu		= "Menunggu : ".$jumlah1;
		$proses			= "Proses : ".$jumlah2;
		$selesai		= "Selesai : ".$jumlah3;
		
		if($strKdKamar == 0){
			$tanggalLahir	= date('d F Y', strtotime($row['tanggalLahir']));
		}else{
			$tanggalLahir	= $row['tanggalLahir'];
		}
		
		$jenisKelamin	= $row['jenisKelamin'];
		$alamat			= $row['alamat'];
		
		array_push($result,array(
			"nomor"			=> $nomor,
			"kdUsers"		=> $kdUsers,
			"kdKamar"		=> $kdKamar,
			"username"		=> $username,
			"password"		=> $password,
			"blokKamar"		=> $blokKamar,
			"noKamar"		=> $noKamar,
			"nama"			=> $nama,
			"tanggalLahir"	=> $tanggalLahir,
			"jenisKelamin"	=> $jenisKelamin,
			"alamat"		=> $alamat,
			"menunggu"		=> $menunggu,
			"proses"		=> $proses,
			"selesai"		=> $selesai
		));
		//Displaying the array in json format 
		echo json_encode(array('result'=>$result));
	}
	
	
	
	mysqli_close($con);
?>