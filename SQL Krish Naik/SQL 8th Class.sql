# Stored Procedure

use customer;
select * from student;

# Calling the Stored Procedure (select * from student;)
call get_student_info; # will give you the same result as (select * from student;)

# Making some changes in the Stored Procedure (age is set to 46(where student.age=46)) 
call get_student_info;

# using the In Procedure
# Again making some changes into it 
call get_student_info(22); # Just input the age in the bracket it will give all the details of that specific row

# using the Out Procedure 
call get_student_info_out(@records);
select @records as	Totalrecords;
