select u.resim, u.uisim, m.magazaisim, sat.fiyat
from liste as l, satis as sat, urun as u, magaza as m
where (l.satid=sat.satisid and sat.uid=u.uid and sat.mid=m.magazaid) and kid=0 and liste='sepet'