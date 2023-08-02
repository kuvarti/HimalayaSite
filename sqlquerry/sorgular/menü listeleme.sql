select u.uid, u.uisim, u.resim,sat.satisid, sat.fiyat, m.magazaisim
from satis as sat, urun as u, magaza as m, kategori as k
where (sat.uid=u.uid and sat.mid=m.magazaid and u.kategori_id=k.k_id) and u.kategori_id=1