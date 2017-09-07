create or replace function Demo return number is
  
	a number;
begin
	a:=1;
	
  dbms_output.put_line('Function Demo!'); 
  return a;
end Demo;
/
