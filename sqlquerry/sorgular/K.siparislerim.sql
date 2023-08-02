/*Kullanici için Siparislerim */ 
use eticsitedb
select s.siprarisid, s.sid,u.uisim, s.tarih, d.durum, s.adet, sat.fiyat
from siparis as s, durum as d, satis as sat, urun as u
where (d.id=s.durum and s.sid=sat.satisid and sat.uid=u.uid) and kid=0