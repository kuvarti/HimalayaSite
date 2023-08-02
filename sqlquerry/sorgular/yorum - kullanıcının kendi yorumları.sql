select u.uisim, uy.puan, uy.yorum
from urunyorumlari as uy, kullanici as k, urun as u
where (uy.kullaniciid=k.id and uy.urunid=u.uid) and k.id=0