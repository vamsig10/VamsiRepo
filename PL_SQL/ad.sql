alter session set time_zone='EST';

create table Table_VG(Movie_Name varchar2(15),Movie_ID number);
insert into Table_VG(Movie_Name,Movie_ID) values('Arjun Reddy', '4');
insert into Table_VG(Movie_Name,Movie_ID) values('Inception', '3');
insert into Table_VG(Movie_Name,Movie_ID) values('Bahubali ', '2');
insert into Table_VG(Movie_Name,Movie_ID) values('Bahubali 2', '2');
insert into Table_VG(Movie_Name,Movie_ID) values('Shutter Island', '6');

insert into Table_VG(Movie_Name,Movie_ID) values('Game Of Thrones', '1');
delete from Table_VG where Movie_ID=1;

update Table_VG set Table_VG.Movie_ID=4 where Table_VG.Movie_Name='Inception';

select * from Table_VG;

