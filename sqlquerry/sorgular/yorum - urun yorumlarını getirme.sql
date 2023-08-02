select k.isim, uy.puan, uy.yorum
from urunyorumlari as uy, kullanici as k
where uy.kullaniciid=k.id and uy.urunid=0