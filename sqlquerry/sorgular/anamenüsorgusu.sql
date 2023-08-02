select u.uid, u.uisim, u.resim, s.fiyat
from urun as u, satis as s
where u.uid=s.uid