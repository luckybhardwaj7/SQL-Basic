# Create Database
create database customer;
use customer;
select * from customer_info;
# Create customer info table
create table customer_info(
id integer auto_increment,
first_name varchar(25),
last_name varchar(25),
salary integer,
primary key(id)
);

# Inseting the Data 
use customer;
select *from customer_info;
insert into customer_info(first_name,last_name,salary)
values
('Lucky','Bhardwaj',80000),
('Yash','Birla',100000),
('Shreya','Shah',30000),
('Shubham','Birla',NULL);

# To check the null value in the salary 
select *from customer_info where salary is null;

# To check the non-null value in the salary
select * from customer_info where salary is not null;

# SQL Update statement to replace the null values
update customer_info set salary=150000 where id=4; 

# Checking the salary 
select*from customer_info;

# SQL Delete statement 
delete from customer_info where id=4;

# SQL ALTER TABLE
# Add Coulmns to the existing table 

alter table customer_info add email varchar(35); 

alter table customer_info add DOB date;

# Alter table modify column type 
alter table customer_info modify DOB year;

# Gives you a description of the Table
desc customer_info; 

# Alter table to drop column
alter table customer_info drop column email;


# Adding again the coulmn email
alter table customer_info add email varchar(35);

# Adding data in the dob and  email columns

update customer_info set DOB=2001 where id=1;
update customer_info set email='blucky@gmail.com' where id=1;

# can add data in multiple rows at once
update customer_info set DOB=1999, email='ybirla@gmail.com' where id=2;

update customer_info set DOB=2000, email='sshah@gmail.com' where id=3;