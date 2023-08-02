<?php 
	$username	="root";
	$password	="admina12";
	$sunucu		="localhost";
	$database	="deneme3";

	$baglan = mysqli_connect($sunucu,$username,$password,$database);

	if ($baglan->connect_errno >0 ) {
		echo "sunucu hatası:".$baglanti->connect_error();
	}
	?><!--<script> alert("calisti");</script>-->