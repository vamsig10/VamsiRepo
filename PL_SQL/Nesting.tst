PL/SQL Developer Test script 3.0
83
-- Created on 31-Aug-17 by VAMSI.GAMIDI 
	

declare 
  -- Local variables here
  i integer;
	a integer;
	j i%type;
	DateVar date;
	TimeStampVar timestamp with time zone;
	type Movie_Rec is record(Movie_Name varchar2(100),Movie_ID number);
	obj_Movie_Rec Movie_Rec;
	
	cursor Movie_Cur IS select Movie_Name from Table_VG; 
	Movie_Cur_Var Movie_Cur%rowtype;
	
	
begin
	 execute Update_Table_VG;
	open Movie_Cur;
	loop
	fetch Movie_Cur into Movie_Cur_Var ; 
	exit when Movie_Cur%notfound;
	dbms_output.put_line(Movie_Cur_Var.Movie_Name);
--dbms_output.put_line(Movie_Cur_Var.Movie_ID);
--dbms_output.put_line(Movie_Cur_Var.Movie_Name);

end loop;
dbms_output.put_line(Movie_Cur%rowcount);

close Movie_Cur;

	j:=3;
	DateVar:='10-JUN-17';
	DateVar:=SYSDATE;
	TimeStampVar:=TO_TIMESTAMP_TZ('11-NOV-2013 11:21:12.00 EST','DD-MON-YYYY HH24:MI:SS.FF TZR');
	
	declare
	i integer;
	begin
		a:=13;
		i:=10;
	dbms_output.put_line('Inner Block');
	dbms_output.put_line(i);
	dbms_output.put_line(j);
	
	end;
	obj_Movie_Rec.Movie_Name:='SM';
	obj_Movie_Rec.Movie_ID:='12';
	
	  i:= 1; 
	

	
	dbms_output.put_line('Outer Block');
	dbms_output.put_line(i);
	dbms_output.put_line(DateVar);
	dbms_output.put_line(TimeStampVar);
	dbms_output.put_line(obj_Movie_Rec.Movie_Name);
	dbms_output.put_line(obj_Movie_Rec.Movie_ID);

/*if(a<i) then
		dbms_output.put_line('a<i');

else
	
			dbms_output.put_line('a>i');

end If;


select Movie_Name,Movie_ID  into obj_Movie_Rec.Movie_Name,obj_Movie_Rec.Movie_ID  from Table_VG;
if SQl%found then
	dbms_output.put_line(sql%rowcount);
end if;*/


--EXECUTE STD13_DEV.Update_Table_VG@ERM13;


 

end;
0
0
