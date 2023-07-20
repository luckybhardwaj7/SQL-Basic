/*
Indexes in SQL are database structures that improve the performance of queries by allowing for faster data retrieval.
They are created on one or more columns of a table and are used to speed up data retrieval operations, such as SELECT statements with WHERE clauses.
User cant see the Indexes once they are created.
Updating the table with the indexes takes a lot of time than updating the table without Indexes because indexes also needs an update.
So, create the Index on those columns only that will be frequently searched against.
*/

use customer;
show tables;

Select * From person;

# To create an Index
create index index_city_name
on person(city_name);

drop table student;

create table student(
id int NOT NULL,
first_name varchar(25) NOT NULL,
last_name varchar(25) NOT NULL,
age int
);

# Craeting the Index
create index index_age
on student(age); # Will be created 

# Creating the Index on the 2 Rows
create index index_age_first_name
on student(age,first_name);

# Dropping the Index that was made of 2 different Indexes
alter table student
drop index index_age_first_name;

# Index named inde_age will be dropped
alter table student
drop index index_age;


