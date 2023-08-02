select u.resim, u.uisim, s.fiyat
from magaza as m, satis as s, urun as u
where m.magazaid=s.mid and s.uid=u.uid and m.magazaid=1