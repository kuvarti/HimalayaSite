/*sadece 0 olan yerler değiştirilebilir, diğer yerler değiştirilmemesi önerilir*/
/*!!!!MySQL e göre yazmaya çalıştım ama çalışmayabilir!!!!*/

INSERT INTO siparis (siprarisid, kid, sid, tarih, durum, adet) values(NULL, 0, 0, '00/00/0000', 0, 2);/*sepetteki ürünleri siperise ekleme sorgusu*/
INSERT INTO urunyorumlari (yorumid, kullaniciid, urunid, puan, yorum) values(NULL, 0, 0, 0, '00000');/*Urun yorumu ekleme*/
INSERT INTO myorum (myid, mid, kid, puan, yorum) values(NULL, 0, 0, 0, '000000');/*magaza yorumu ekleme*/