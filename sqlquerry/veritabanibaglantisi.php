<?php 
	$username	="root";
	$password	="admina12";
	$sunucu		="localhost";
	$database	="ilkdeneme";

	$baglan=mysql_connect($sunucu,$username,$password);

	if (!=$baglan) {
		die "sunucu hatası : ".mysql_error();
	}
	echo "calisti";

	/*
	$db=mysql_select_db($database);
	if ($db) {
		echo "veritabanı hatası".mysql_error();
		echo "<br>";
		echo "bla bla bla bla bla bla";
		exit();
	}*/
 ?>
