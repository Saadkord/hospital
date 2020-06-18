create database hospital
create table doctors (doc_id int identity(1,1) primary key ,
 doc_name Nvarchar(200) not null unique , attendance nvarchar(10) not null)

create table patients (pat_id int identity(1,1) primary key ,
  pat_name Nvarchar(200) not null unique, pat_age int ,phone_number int)

create table medicine (med_id int identity(1,1) primary key ,
   med_name Nvarchar(200) not null unique , med_coun int, med_price int)


  insert into doctors values('saad' , 'yes')
  insert into doctors values('ali' , 'no')

  insert into patients values('kareem' , 15, 01025418694)
  insert into patients values('hossam' , 40, 01021964354)

  insert into medicine values('sdf', 1, 50)
  insert into medicine values('kjh' , 3, 48)

  select * from doctors 
  select * from patients  
  select * from medicine  


  


  update doctors set doc_name = 'madboly' where doc_id = 1
  update doctors set attendance = 'no' where doc_id = 3
 
  update patients set pat_name = 'sayed' where pat_id = 1
  update patients set phone_number = 01052467849 where pat_id = 5
  update patients set pat_age = 32 where pat_name = 'hossam'  

  update medicine set med_name = 'ffr' where med_id = 1
  update medicine set med_price = 15 where med_name = 'kjh'
  update medicine set med_coun = 2 where med_name = 'sdf'


  delete from doctors where doc_id = 2
  delete from doctors where doc_name = 'saad'

  delete from medicine where med_id = 2
  delete from medicine where med_name = 'sdf'
  delete from medicine where med_coun = 3

  delete from patients where pat_id = 2
  delete from patients where pat_name = 'saad'
  delete from patients where pat_age = 15

  select doc_name  from doctors where doc_id = 1
  select doc_name   from doctors where attendance = 'yes'
  select doc_name, attendance from doctors where doc_name like 's%'
  select attendance  from doctors where doc_name = 'ali' 
  select attendance, doc_id from doctors where attendance = 'yes'
  select doc_name from doctors where attendance = 'no'
  select doc_id from doctors where doc_name = 'saad' and attendance = 'yes'
   
  select pat_name from patients where pat_id = 1
  select phone_number from patients where pat_name like 'k%'
  select phone_number from patients where pat_name = 'hossam'
  select pat_id,pat_name from patients where phone_number = 01025418694 
  select pat_id, pat_age from patients where phone_number = 01021964354 and pat_name = 'hossam' 
  select pat_name, phone_number from patients where pat_age = 50
     
  select med_name from medicine where med_id = 1
  select med_name, med_price from medicine where med_name like '%d%'
  select med_price from medicine where med_name = 'kjh'
  select med_id, med_name from medicine where med_price = 50 
  select med_id, med_name from medicine where med_price >=48
  select med_id from medicine where med_name = 'sdf' and med_price = 50
  select med_coun from medicine where med_name like '%k'
  select avg (med_price) from medicine
  select sum (med_coun) from medicine 
   

  select doc_name, attendance from doctors where doc_id in (select distinct doc_id from doctors)
  select pat_name, phone_number from patients where pat_id in (select distinct pat_id from patients)
  select med_name, med_price from medicine where med_id in (select distinct med_id from medicine )

  SELECT COUNT(attendance), doc_name FROM doctors GROUP BY doc_name ORDER BY COUNT(attendance) DESc
  select count (pat_id), pat_age from patients group by pat_age order by count (pat_id) desc
  SELECT COUNT(med_id), med_price FROM medicine GROUP BY med_price ORDER BY COUNT(med_Id) DESc

