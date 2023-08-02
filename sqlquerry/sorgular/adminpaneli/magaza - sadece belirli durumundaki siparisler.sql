/*Magaza için Siparislerim */ 
USE eticsitedb

select s.siprarisid, s.adet, u.uisim,u.uid,k.isim,k.eposta,s.tarih,k.adres,s.durum
from siparis as s, magaza as m, satis as sat, kullanici as k,urun as u
where (s.sid=sat.satisid and m.magazaid=sat.mid and s.kid=k.id and sat.uid=u.uid) and (m.magazaid=1 and s.durum=2/*<<<<durum idsi buraya girilecek*/)
order by durum