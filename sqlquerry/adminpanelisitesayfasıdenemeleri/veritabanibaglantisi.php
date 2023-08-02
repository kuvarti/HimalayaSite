<?php 
	include 'baglanti.php';
	$sql = "select durum from durum ";
	$result=$baglan->query($sql);

	if ($result->num_rows > 0) {
		while ($oku=$result->fetch_assoc()) {
			//echo "<br>kid : ".$oku["kid"]."- kad : ".$oku["kad"];
			echo "<a href='#'>".$oku["durum"]."</a>";
		}
	}else{
		echo "KAYIT YOK LAN MQ SEN MENİMLE DALGA Mİ GEÇİYİN";
	}
	$baglan->close();
 ?>
