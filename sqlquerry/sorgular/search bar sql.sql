select u.uisim, u.resim, sat.fiyat, m.magazaisim
from satis as sat, urun as u, magaza as m 
where (sat.uid=u.uid and sat.mid=m.magazaid) and
((u.uisim like '%0%' or u.hakkinda like '%0%' or m.magazaisim like '%0%'))