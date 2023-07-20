use customer;
create table person(
id int NOT NULL,
first_name varchar(25) NOT NULL,
last_name varchar(25) NOT NULL,
age int 
);
# To assign the Primary Key again once table gets created where one column will be Primary Key
alter table person
add primary key(id);

# To assign the Primary Key after creating the Table where 2 columns will be Primary Key

alter table person
add CONSTRAINT pk_person primary key(id,age);

# Dropping the Primary Key 
alter table person
drop primary key;

drop table person;

#Foreign Key 

create table person(
id int NOT NULL,
first_name varchar(25) NOT NULL,
last_name varchar(25) NOT NULL,
age int,
salary int,
primary key(id)
);

# Creating antother table 
use customer;
create table department(
id int NOT NULL,
department_id int NOT NULL,
department_name varchar(25) NOT NULL,
primary key (department_id),
CONSTRAINT fk_person_department foreign key (id) references person(id)   
);
drop table department;

# Creating again the Table Department without Foreign Key 
use customer;
create table department(
id int NOT NULL,
department_id int NOT NULL,
department_name varchar(25) NOT NULL,
primary key (department_id)
);
# adding the Foreign Key 
alter table department
add foreign key(id) references person(id);

drop table department;
drop table person;


## Check Constreaints
create table person(
id int NOT NULL,
first_name varchar(25) NOT NULL,
last_name varchar(25) NOT NULL,
age int,
salary int,
primary key(id),
CHECK (salary<50000) # can insert salary that is less than 50000
);
insert into person values(1,'Lucky','Bhardwaj',22,60000); # Will raise an error as salary is limited to 50000
insert into person values(1,'Lucky','Bhardwaj',22,40000); # Will be executed easily 
drop table person;

# Default Constraint
create table person(
id int NOT NULL,
first_name varchar(25) NOT NULL,
last_name varchar(25) NOT NULL,
city_name varchar(25) default 'Aligarh' # The city name will be set to Aligarh for all the Data Entries 
);

# Dropping the default
alter table person
alter city_name drop default; # Default city will be removed from Aligarh 


show tables;
desc person;