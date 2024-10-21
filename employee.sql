CREATE TABLE employee (
    emp_id SERIAL PRIMARY KEY,
    fname VARCHAR(1000),
    lname VARCHAR(1000),
    email VARCHAR(1000),
    dept VARCHAR(1000),
    salary INT,
    hire_date DATE
);
select * from employee;
INSERT INTO employee(fname, lname, email, dept, salary, hire_date)
VALUES 
('Ayesha', 'Ali', 'ayeshalai09@gmail.com', 'CS', 100000, '2024-10-11'),
('Priya', 'Singh', 'priyasinghh46@gmail.com', 'HR', 12400, '2024-01-14'),
('Arjun', 'Verma', 'arjun25@gmail.com', 'IT', 43210, '2024-11-14'),
('Suman', 'Patel', 'sumaan88@gmail.com', 'FINANCE', 23450, '2024-10-13'),
('Kavita', 'Rao', 'kavitaa99@gmail.com', 'HR', 13400, '2024-10-11'),
('Kapil', 'Gupta', 'kapill24@gmail.com', 'CS', 24660, '2024-10-11'),
('Neha', 'Dessai', 'nehaa23@gmail.com', 'HR', 54700, '2024-10-11'),
('Murli', 'Prasad', 'murliiparsad21@gmail.com', 'CS', 245700, '2024-10-11'),
('Devi', 'Prasad', 'deviipar08@gmail.com', 'Marketing', 125000, '2024-10-11'),
('Rahul', 'Nair', 'rahulnairr29@gmail.com', 'CS', 24000, '2024-10-11');
select * from employee Where salary >50000;
select * from employee where dept = 'HR' or dept = 'Marketing';
SELECT * FROM employee 
WHERE dept = 'IT' 
AND salary > 20000;
select * from employee where dept NOT IN ('IT','HR');
select * from employee where salary between 20000 and 50000;
select dept from employee;
select  distinct dept  from employee;                                                
select * from employee order by fname; 
select * from employee order by salary desc; 
select * from employee limit 5;
select * from employee where fname  LIke '%a';
select * from employee where dept  LIke '__';
select count (emp_id) from employee;
select sum(salary) from employee;
select Avg(salary) from employee;
select min(salary) from employee;
select max(salary) from employee;
select dept from employee GROUP By dept;
select dept, min(salary) from employee group by dept;
select emp_id , concat_WS(' ',fname,lname) As fullname , dept from employee;
select substr('Ayesha Ali', 1,4 );
select replace ('ABCSD','AB','23');
select replace (dept , 'IT','tech') from employee;
select reverse (fname ) from employee;
SELECT LENGTH(fname) FROM employee;
SELECT * FROM employee where length(fname)> 5;
SELECT upper(fname) FROM employee;
SELECT left ('hello world',4);
SELECT right ('hello world',4);
select length (trim('  Alright!  '));
select position ('ay'in'ayeshaali');
select   concat_WS(':',fname,lname,dept,emp_id)   from employee where emp_id=1;
select   concat_WS(':',emp_id, concat_ws(' ',fname,lname),dept,salary)   from employee where emp_id=1;
select   concat_WS(':',emp_id,fname,upper(dept))   from employee where emp_id=4;
select concat (left(dept,1),emp_id),fname from employee where emp_id=1;
select distinct(dept) from employee;
select max(salary) from employee;
select min(salary) from employee;
select length(lname,3) from employee;
select * from employee LIMIT 3;
SELect * from employee where fname like  'A%';
select * from employee where length(lname ) >=4;
select count(distinct (dept)) from employee;
SELECT dept, COUNT(*) AS num_of_employees
FROM employee
GROUP BY dept;
select max(salary) from employee  where dept= 'HR';
SELECT emp_id, fname, lname, salary, dept
FROM employee
where dept='HR'
ORDER BY salary DESC
LIMIT 1;

