select u.uid,u.uisim,u.umarka,k.k_ad,u.hakkinda,u.resim from urun as u, kategori as k where u.kategori_id=k.k_id