# SQL Joins
/* 
1. Inner Join
2. Left Join
3. Right Join
4. Full Join
5. Neural Join
6. Cross Join
*/

use customer;
select * from student;
insert into student values(4,'Shubham','Kulshrestha',23),
(5,'Mahendra Singh','Dhoni',45),
(6,'Suresh','Raina',46);

select * from department; # Here we have 3 entries only so inner join will show 3 entries only
# Inner Join here you will see only those names whose Department name is alloted 
Select * From student inner join department on student.studentid=department.studentid;

# Add one more row in the department 
select * from department;
insert into department values(4,'Civil');

# Now Perform again the Inner Join
Select * From student inner join department on student.studentid=department.studentid; 
# This inner Join will show 4 entries only

# Now I want that specific information from the table whose department are alloted to them 

# Inner Join
select * from student inner join department on student.studentid=department.studentid;
# This will give you selected Information from the Inner Join 
select student.first_name,student.last_name,student.age,department.department_name
from student inner join department on student.studentid=department.studentid;		  


# Left Join  This will prioritize the Left table that is student table over here 
select student.first_name,student.last_name,student.age,department.department_name
from student left join department on student.studentid=department.studentid;
# It will show all the data wether it is connected to the department_name or not 

# Right Join- This will prioritize the Right table that is student table over here
select student.first_name,student.last_name,student.age,department.department_name
from student Right join department on student.studentid=department.studentid;
# It will show all the department data wether correspond data is present in the student table or not 

 # Full Outer Join- Gives the priority to the entire table 
 # To create the full outer join perform the left and right join seperately then make union of it as shown below:
 
select student.first_name,student.last_name,student.age,department.department_name
from student left join department on student.studentid=department.studentid
union
select student.first_name,student.last_name,student.age,department.department_name
from student right join department on student.studentid=department.studentid;

# Cross Join- Gives all the possiblities by combining all the records
select student.first_name,student.last_name,student.age,department.department_name
from student cross join department;

# Natural Join- natural join is a type of join that combines tables based on matching column names.
# Automatically matches columns with the same name in both tables and returns the rows where the values in those columns are equal.
select student.first_name,student.last_name,student.age,department.department_name
from student natural join department;
