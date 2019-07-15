<?php
error_reporting(E_ALL);
ini_set('display_errors', 0);
 	require_once('dbConnect.php');
	
	$kdUsers	= $_POST['kdUsers'];
	$kdKamar	= $_POST['kdKamar'];
	$sekarang	= date('Y-m-d');
	
	$result = array();
	if(empty($kdUsers)){
	
		$sql	= "SELECT * FROM users, kamar WHERE users.kdUsers=kamar.kdUsers AND users.statusDelete='0' AND kamar.statusDelete='0' AND users.level='2' ORDER BY kamar.blokKamar, kamar.noKamar ASC";
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
				"nama"			=> 'Kamar Masih Kosong'
			));
		}
	} else {
		
		$sql	= "SELECT * FROM users, kamar WHERE users.kdUsers=kamar.kdUsers AND users.statusDelete='0' AND kamar.statusDelete='0' AND users.level='2' AND users.kdUsers='$kdUsers' AND kamar.kdKamar='$kdKamar'";
		$r		= mysqli_query($con, $sql);
		$row	= mysqli_fetch_array($r);
		$kdUsers		= $row['kdUsers'];
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