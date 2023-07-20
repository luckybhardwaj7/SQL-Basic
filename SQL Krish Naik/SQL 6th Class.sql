use customer;
create table student(
studentid int auto_increment,
first_name varchar(25) NOT NULL,
last_name varchar(25) NOT NULL,
age int,
primary key(studentid)
);
# Inserting some values into the table
select * from student;
insert into student values(1,'Lucky','Bhardwaj',22),
(2,'Yash','Birla',24),
(3,'Shreya','Shah',23);

# Creating another Table
create table department(
student_id int auto_increment,
department_name varchar(25) NOT NULL,
foreign key(student_id) references student(studentid)
); 

insert into department values(1,'CS'),
(2,'Electronics'),
(3,'Mechanical');
select * from department;

# Executing both of the Quries at once 
select * from department;
select * from student;

# Making an inner join 
select first_name, last_name, age from student inner join department 
using (studentid);

# Creating a view of the data present in this Inner Join
create view student_info as
select first_name, last_name, age from student inner join department 
using (studentid);

# Dropping this view
drop view student_info; # You can do the same using the right click and then drop view 