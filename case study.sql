--cases
create table salary(
fname varchar(200),
salary int
);
INSERT INTO salary (fname, salary) VALUES
('Raju', 37000),
('Sham', 32000),
('Paul', 25000),
('Max', 45000),
('baburao', 35000),
('Rick', 65000),
('Alex', 25000),
('Taylor', 75000),
('Jhon', 40000);
select * from salary;
SELECT
    CASE
        WHEN salary >= 50000 THEN 'high'
        WHEN salary >= 40000 AND salary < 50000 THEN 'mid'
        ELSE 'low'
    END AS salary_cat,
    COUNT(fname) AS count
FROM salary
GROUP BY salary_cat;

select fname,salary,
case
when salary >0 then round (salary*.10)
end as bouns
from
salary;
