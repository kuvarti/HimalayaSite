<!DOCTYPE html>
<html>
<head>
	<title></title>
	<?php include 'dropdownstyle.php'; ?>
	<style type="text/css">
		table, th, td {
  			border: 1px solid black;
		}
    td{
      width: auto;
      height: auto;
    }
	</style>
</head>
<body>
  <?php  
    include 'dropdown.php';
    ?>
	<table style="width:50%">
  <tr>
    <th>SiparisID</th>
    <th>Adet</th>
    <th>Uisim</th>
    <th>uid</th>
    <th>isim</th>
    <th>eposta</th>
    <th>tarih</th>
    <th>durum</th>
  </tr>
  <?php
    include 'baglanti.php';
    $sql = "select s.siprarisid, s.adet, u.uisim,u.uid,k.isim,k.eposta,s.tarih,s.durum from siparis as s, magaza as m, satis as sat, kullanici as k,urun as u where (s.sid=sat.satisid and m.magazaid=sat.mid and s.kid=k.id and sat.uid=u.uid) and m.magazaid=1 order by durum";
    $result=$baglan->query($sql);

     if ($result->num_rows > 0) {
      while ($oku=$result->fetch_assoc()) {
        //echo "<br>kid : ".$oku["kid"]."- kad : ".$oku["kad"];
        echo "<tr>";
        echo "<td><a href='#'>".$oku["siprarisid"]."</td><td>".$oku["adet"]."</td><td>".$oku["uisim"]."</td><td>".$oku["uid"]."</td><td>".$oku["isim"]."</td><td>".$oku["eposta"]."</td><td>".$oku["tarih"]."</td><td>".tekrar()."</a></td>";
        echo "</tr>";
      }
    }else{
      echo "KAYIT YOK LAN MQ SEN MENİMLE DALGA Mİ GEÇİYİN";
    }
    $baglan->close();

  ?>
</table>
<?php tekrar(); ?>
</body>
</html>