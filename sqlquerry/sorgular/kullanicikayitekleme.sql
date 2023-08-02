insert into kullanici (eposta, sifre, isim, yas) 
select '0', '0', '0', 0 from dual
where NOT EXISTS(select * from kullanici where eposta='0')

/*
if NOT EXISTS(select * from kullanici where eposta='0')
begin
	insert into kullanici (eposta, sifre, isim, yas) 
	values('0', '0', '0', 0)
end
*/