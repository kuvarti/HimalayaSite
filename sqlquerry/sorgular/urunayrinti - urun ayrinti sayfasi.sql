/* ürünün kendi özel sayfası */
select  u.resim, u.uisim, u.umarka, s.indirim, s.fiyat, m.magazaisim
from satis as s, magaza as m, urun as u
where s.mid=m.magazaid and s.uid=u.uid and u.uid=4
order by s.fiyat 
LIMIT 1

/* sinan */
select u.uid, u.uisim,u.resim, u.umarka, u.hakkinda, s.fiyat, m.magazaisim 
from urun as u, satis as s, magaza as m
where u.uid=4 order by s.fiyat asc limit 1