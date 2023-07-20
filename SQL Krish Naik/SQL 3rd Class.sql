/*
In SQL, constraints are rules or conditions applied to the columns or tables that enforce data integrity and maintain the consistency
and validity of the data. They define limits or requirements that must be met for data to be inserted, updated, or deleted in a table.
 
Here are some commonly used SQL constraints:

1. Primary Key Constraint: A primary key constraint ensures that each row in a table is uniquely identified. 
It prevents duplicate values and ensures data integrity. Only one primary key constraint can be defined per table.

2. Unique Constraint: A unique constraint ensures that the values in a column (or a group of columns) are unique, 
i.e., no duplicates are allowed. Unlike the primary key constraint, a unique constraint can be applied to multiple columns.

3. Foreign Key Constraint: A foreign key constraint establishes a relationship between two tables based on the values of a column(s).
It ensures referential integrity by enforcing that the values in the foreign key column(s) correspond to existing primary key values
in another table.

4. Check Constraint: A check constraint allows you to define a condition that must be satisfied for a column.
It ensures that only valid data is inserted or updated. For example, you can specify a check constraint to enforce that a numeric
column must be positive.

5. Not Null Constraint: A not null constraint ensures that a column cannot have a null (empty) value. It requires that the column must always have a non-null value.

6. Default Constraint: A default constraint specifies a default value for a column if no explicit value is provided during an insert operation. It ensures that a column is assigned a default value when a new row is added.

These constraints help maintain data integrity, enforce business rules, and provide consistency in the database. They play a crucial role in preventing data inconsistencies and ensuring the accuracy and reliability of the data stored in SQL tables.
*/

use customer;
create table student(
id int NOT NULL,
first_name varchar(25) NOT NULL,
last_name varchar(25) NOT NULL,
age int 
);
desc student;
# Age can have null, so modifying it to not null 
alter table student modify age int NOT NULL;


# UNIQUE VALUE
use customer;

create table person(
id int not null,
first_name varchar(25) NOT NULL,
last_name varchar(25) NOT NULL,
age int NOT NULL,
UNIQUE(id)
);

insert into person values(1,'Lucky','Bhardwaj',22);

insert into person values(1,'Yash','Birla',24);
# The above wont be possible as id is unique and that wont be repeted again.

# Making another row as unique 
alter table person 
ADD UNIQUE (first_name);

desc person;

alter table person 
add constraint uc_person unique(age,first_name);

# Dropping the Unique
alter table person 
drop index uc_person;


-- Primary Key 
create table person1(
id int NOT NULL,
first_name varchar(25) NOT NULL,
last_name varchar(25),
age INT,
CONSTRAINT pk_person primary key(id,last_name)
);
desc person1;

alter table person1
drop primary key; # will delete all the primary key 

alter table person1
add primary key(id);