select uid,uisim,umarka,kategori_id,hakkinda,resim 
from urun
where uid NOT IN(select u.uid from urun as u, satis as s where u.uid=s.uid)