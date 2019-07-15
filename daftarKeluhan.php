<?php
error_reporting(E_ALL);
ini_set('display_errors', 0);
 	require_once('dbConnect.php');
	
	$strKdUsers		= $_POST['kdUsers'];
	$strKdKamar		= $_POST['kdKamar'];
	$strKdTombol	= $_POST['kdTombol'];
	$levelUser		= $_POST['levelUser'];
	$sekarang	= date('Y-m-d');
	
	$result = array();
	
	if($strKdTombol == "all"){
	
		if($levelUser == "1"){
			$sql	= "SELECT * FROM users, kamar, keluhan WHERE keluhan.kdKamar=kamar.kdKamar AND keluhan.kdUsers=users.kdUsers AND keluhan.statusDelete='0' AND users.level='2' ORDER BY tanggalKeluhan DESC";
		}else{
			$sql	= "SELECT * FROM users, kamar, keluhan WHERE keluhan.kdKamar=kamar.kdKamar AND keluhan.kdUsers=users.kdUsers AND keluhan.statusDelete='0' AND users.level='2' AND keluhan.kdUsers='$strKdUsers' ORDER BY tanggalKeluhan DESC";
		}
		$r		= mysqli_query($con, $sql);
		$count	= mysqli_num_rows($r);
		
		//creating a blank array
		$nomor = 0;
		if($count>=1){
			while($row = mysqli_fetch_array($r)){
				$nomor++;
				//Pushing name and id in the blank array created 
				array_push($result,array(
					"nomor"			=> $nomor,
					"kdUsers"		=> $row['kdUsers'],
					"username"		=> $row['username'],
					"blokKamar"		=> $row['blokKamar'],
					"noKamar"		=> $row['noKamar'],
					"kdKamar"		=> $row['kdKamar'],
					"kdKeluhan"		=> $row['kdKeluhan'],
					"keluhan"		=> $row['keluhan'],
					"tanggalKeluhan"=> date('d F Y', strtotime($row['tanggalKeluhan'])),
					"statusKeluhan"	=> $row['statusKeluhan'],
					"nama"			=> $row['nama']
				));
			}
		}else{
			array_push($result,array(
				"nomor"			=> '1',
				"kdUsers"		=> '0',
				"username"		=> '',
				"blokKamar"		=> '-',
				"noKamar"		=> '-',
				"kdKamar"		=> '',
				"kdKeluhan"		=> '',
				"keluhan"		=> '',
				"tanggalKeluhan"=> 'Pengaduan Masih Kosong',
				"statusKeluhan"	=> '',
				"nama"			=> '-'
			));
		}
		
	} else {
		
		$sql	= "SELECT * FROM users, kamar WHERE users.kdUsers=kamar.kdUsers AND users.statusDelete='0' AND kamar.statusDelete='0' AND users.level='2' AND users.kdUsers='$strKdUsers'";
		$r		= mysqli_query($con, $sql);
		$row	= mysqli_fetch_array($r);
		$kdUsers		= $row['kdUsers'];
		$kdKamar		= $row['kdKamar'];
		$username		= $row['username'];
		$password		= $row['password'];
		$blokKamar		= $row['blokKamar'];
		$noKamar		= $row['noKamar'];
		$nama			= $row['nama'];
		$tanggalLahir	= $row['tanggalLahir'];
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
			"alamat"		=> $alamat
		));
		
	}
	
	//Displaying the array in json format 
	echo json_encode(array('result'=>$result));
	mysqli_close($con);
?>