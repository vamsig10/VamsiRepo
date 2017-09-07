create or replace procedure Update_Table_VG is


begin
update Table_VG set Table_VG.Movie_ID=999 where Table_VG.Movie_Name='Inception';	
commit;
   dbms_output.put_line('Hello World!'); 

	
exception
	when others then 
		raise;
		--rollback;
end Update_Table_VG;
/
