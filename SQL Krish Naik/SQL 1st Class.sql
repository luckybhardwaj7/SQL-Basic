# ctrl+shift+Enter i sused to execute the complete query 
# ctrl+Enter in the same line is used to execute the specific line only 
show databases;
use world;
show tables;
Select * from city;
Select * from countrylanguage;

create database customers;
# Database named as Customers has been created 
drop database customers;
# Database named as Customers has been deleted

# Creating a tbale in the Database
create database customers;
use customers;

create table customer_info(id integer,first_name varchar(10),last_name varchar(10));

show tables;

select * from customer_info;

insert into customer_info(id,first_name,last_name) values(1,'Lucky','Bhardwaj');

insert into customer_info(id,first_name,last_name) values(2,'Yash','Birla')