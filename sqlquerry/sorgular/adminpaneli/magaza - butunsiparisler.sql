/*Magaza için Siparislerim */ 

select s.siprarisid, s.adet, u.uisim,u.uid,k.isim,k.eposta,s.tarih,k.adres,d.durum,u.resim,sat.fiyat
from siparis as s, magaza as m, satis as sat, kullanici as k,urun as u, durum as d
where (s.sid=sat.satisid and m.magazaid=sat.mid and s.kid=k.id and sat.uid=u.uid and d.id=s.durum) and m.magazaid=1
order by durum