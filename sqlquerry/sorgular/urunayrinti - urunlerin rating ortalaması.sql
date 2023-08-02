select u.uisim, AVG(uy.puan) as rating_ortalama 
from urunyorumlari as uy, urun as u 
where u.uid=uy.urunid and u.uid=0
group by uy.urunid, u.uisim