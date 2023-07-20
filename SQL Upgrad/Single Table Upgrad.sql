-- Single Table Query
-- 1. Basic SQL Query 
# Extract the entire Data from the table named as Customer
use smithazon;
SELECT * FROM customer;

# Extract customer_num, customer_name, and balance_due from the customer table
Select c.customer_num, c.customer_name, c.balance_due from customer c;

-- 2. Filtering Results 
# From the customer table, display the details of the customer with customer number 1007.
SELECT  customer_num, customer_name, balance_due FROM customer WHERE customer_num=1007;

# Display customers having customer number > 1004
Select customer_num, customer_name, balance_due FROM customer WHERE customer_num>1004;

# Find the customer_num and balance_due for the customer ‘Unboxed’
Select c.customer_num, c.customer_name, c.balance_due from customer c Where c.customer_name='Unboxed';

#Find customers who have a balance due
Select c.customer_num, c.customer_name, c.balance_due from customer c WHERE c.balance_due>0;

# Find customers whose balance due exceeds the credit limit.
Select c.customer_num, c.customer_name, c.balance_due from customer c Where c.balance_due>credit_limit;

# Practice Questions
# The team wants a list of all Smithazon product categories. Which of the following SQL code will print the names of all categories
Select category_name From part_category;

# The company decided to focus on the sporting goods category(id=2). Management wants list of products in this category. 
Select part_name From part where category_id=2;

# Practice Questions
# List all rows and columns for the full representative table. 
Select* From representative;

# List the part id and name for all parts that are out of stock.
select p.part_id, p.part_name from part p Where p.quantity_in_stock=0;
# List the city, state, and zip code for each warehouse in the state of Maryland (MD).
Select w.city,w.state,w.zip from warehouse w where w.state='MD';
# List the customer number and name for all customers with a credit limit of at least $20,000.
Select customer_num,customer_name From customer Where credit_limit>20000;