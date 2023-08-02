update magaza set magazaisim='0' where magazaid=0 /*magazaismi değiştirme*/;
update magaza set magazasifre='0' where magazaid=0 /*magazasifre değiştirme*/;
update magaza set telefon='0' where magazaid=0 /*magaza telefon no değiştirme*/;
update magaza set adres='0' where magazaid=0 /*magaza adres değiştirme*/;
update magaza set resim='0' where magazaid=0 /*magaza logo/resim değiştirme*/;

select * from magaza where magazasifre='0'; /*magaza sifresi geğiştirebilmerk için eski şifreyi sorgulamak için kullanılacak sorgu*/;
 
delete from magaza where magazaid=0; 	/*magazayi silme magaza ile beraber bütün magaza yorumlarını ve satislari siler*/
delete from satis where mid=0;			/*bunuda üste ekle*/
delete from myorum where mid=0;			/*bunuda üste ekle*/