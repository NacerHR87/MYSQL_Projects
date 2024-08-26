  CREATE TABLE employees (
   empl_id INT,
   first_name VARCHAR (50),
   last_name VARCHAR(50),
   hourly_pay DECIMAL(5, 2),
   hire_date DATE
   );
  
    
  select * from employees;
  
  -- if you want rename your table to workers for example this will be :
  -- RENAME TABLE employees TO workers;
  
  -- to drop a table:
  -- DROP TABLE employees;
  
  -- ALTER TABLE :

  ALTER TABLE employees
  ADD phone_number VARCHAR (15);
  
  SELECT * FROM employees;
  
  -- rename phone_number col to email:
ALTER TABLE employees
RENAME COLUMN phone_number TO email;

SELECT * FROM employees;
-- email data type is varchar(15) too short for email , let's change it and make it varchar(100)

ALTER TABLE employees
MODIFY COLUMN email VARCHAR (100);

SELECT * From employees;

-- let's move our email column so it's after last_name column:
ALTER TABLE employees
MODIFY email VARCHAR (100)
AFTER last_name;

SELECT * FROM employees;

-- let's move our email column to first position:
ALTER TABLE employees
MODIFY email VARCHAR (100)
FIRST;

SELECT * FROM employees;

-- LET'S DROP OUR EMAIL COLUMN:
ALTER TABLE employees
DROP COLUMN email;

SELECT * FROM employees;


-- update

update employees (table name)
set hourly_salary  = 10.2,  -- (col name) --(you can update multiple fields )
     Hire_date = '2023-01-07'
where empl_id = 6; (specify)
select * from employees;

-- delete rows
delete from employees (table name)
where empl_id = 6; (col name) -- this will delete the row which correspand to empl_id=6
select * from employees;

-- insert rows in a table
-- we have 5 columns : empl_id , first_name, last_name , hourly_pay , hire_date
-- values to be added needs to follow the structure of our columns
 -- empl_id = 1 , first_name = "Eugene" , last_name = "Krab", hourly_pay= 25.50, hire_date="2023-01-02"

insert into employees (table name)
values(1, "Eugene" , "Krab",25.50,"2023-01-02");
-- we can add multiple rows (NUMBER OF () )
select * from employees;
-- EX ON ADDING MANY ROWS , LET'S ADD 4 ROWS
INSERT INTO employees
values (2, "Squidwar", "Tentacles", 15.00,"2023-01-03"),
       (3, "Songebob", "Squarepants", 12.50,"2023-01-04"),
       (4, "Patrick", "Star", 12.50,"2023-01-05"),
       (5, "Sandy", "Cheeks", 17.25,"2023-01-06");
      
select * from employees;
-- we can add data (not all)  to a row but we have precise the column else we will have an error as missing data
-- ex we want to add a 6 row but we want to put empl_id,first_name,last_name (no hourly_pay , hire_date)

insert into employess (empl_id, first_name, last_name)-- specified columns
-- we specified the columns , we don't have hourly_pay , hire_date info yet
values (6,"Sheldon", "Plenkton");

select * from employees;

-- PRACTICE:

-- insert

insert into employees 
values (1, "Eugene" , "Krab",25.50,"2023-01-02"),
       (2, "Squidwar", "Tentacles", 15.00,"2023-01-03"),
       (3, "Songebob", "Squarepants", 12.50,"2023-01-04"),
       (4, "Patrick", "Star", 12.50,"2023-01-05"),
       (5, "Sandy", "Cheeks", 17.25,"2023-01-06");

-- insert missing data

insert into employees (empl_id, first_name, last_name)
values (6,"Sheldon", "Plenkton");

select distinct * from employees;

-- disctinct to avoid duplicates


    