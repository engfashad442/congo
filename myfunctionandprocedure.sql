--creating the stored procedure for the first time.

create or [replace] procedure sp_myFirstProc --am creating procedure with name sp_myFirstProc and 3 parameters
[(
 v_name in varchar2(20), --am creating  parameters with for the procedure which is optional
 v_address in varchar2(20),-- this is my second parameter for the stored procedure
 n_age in  int -- this is the last parameter for the procedure and the data type is integer
 -- note : return type for procedure is optional 
 )] -- this is the end of the parameter


is
-- this where declaration of parameters are declare
 n_result int ;
begin   -- this is the beginning of the body of the stored procedure
select n_result = count(*) from tablename where
employ_name = v_name and employ_address = v_addess and age =  n_age;
if (n_result >=1) then 
dbms_output.put_line('the employ name' || v_name ); --this line of 
else
dbms_output.put_line('query was successfully done'); --this line of code display out
end if;


end;/ -- this is the end of the stored procedure
-----------------------------------------------------------------------------------------------------
create or [replace] function f_MyFirst_functioin-- am crating a function which return an integer as the data type

[(
      n_age in integer;  rem this is an input paramter for the function
 
 return integer; -- the return type of the function ceated above is integer
                    --note that a functiuon will always return a value on like stored procedure that is optional
)]
 v_name  in varchar2(20); -- declaration of a variable that can be further be used .
is 
begin  -- this is the begininng of the body of my function 
   select v_name = count(*) from tblname where employage = n_age;
   if(v_name ==1) then
    dbms_output.put_line("you are welcome to my wold of programming , i code in many languages that is why am a geneious programmer" );
     else 
     dbms_output.put_line('user already exist'); rem this output else condition
   end if; -- this is the end of the if statement


end;/-- this is the end of my function   

-- creating a parameterless function
create or [replace]  function f_myFistFunction 
  
return int; -- this is the return type for the parameterless function
is
 v_name in varchar(40);
 
begin 
  
       

end;/