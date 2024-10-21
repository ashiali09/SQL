create table students(
s_id serial primary key,
name varchar(100) not null
);
create table courses(
c_id serial primary key,
name varchar(100) not null,
fee numeric not null
);
CREATE TABLE enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    s_id INT NOT NULL,
    c_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    FOREIGN KEY (s_id) REFERENCES students(s_id),
    FOREIGN KEY (c_id) REFERENCES courses(c_id)
);
insert into students (name) values
('Raju'),
('sham'),
('Alex');
insert into courses (name,fee)
values
('Math',500),
('physics',600),
('chemistry',700);
INSERT INTO enrollment (s_id, c_id, enrollment_date)
VALUES
(1, 1, '2024-01-01'), -- Raju enrolled in Mathematics
(1, 2, '2024-01-15'), -- Raju enrolled in Physics
(2, 1, '2024-02-01'), -- Sham enrolled in Mathematics
(2, 3, '2024-02-15'), -- Sham enrolled in Chemistry
(3, 3, '2024-03-25'); -- Alex enrolled in Chemistry
select * from students;
select * from courses;
select * from enrollment;
SELECT s.name ,e.enrollment_date,  c.name , c.fee
FROM enrollment e
JOIN students s ON e.s_id = s.s_id
JOIN courses c ON e.c_id = c.c_id;

-- group by sum and count function
SELECT s.name, COUNT(c.c_id) AS total_courses
FROM enrollment e
JOIN students s ON e.s_id = s.s_id
JOIN courses c ON e.c_id = c.c_id
GROUP BY s.name; -- about every student course count
SELECT s.name, COUNT(c.c_id) AS total_courses
FROM enrollment e
JOIN students s ON e.s_id = s.s_id
JOIN courses c ON e.c_id = c.c_id
WHERE s.name = 'Raju'
GROUP BY s.name;
SELECT s.name, SUM(c.fee) AS total_payment
FROM enrollment e
JOIN students s ON e.s_id = s.s_id
JOIN courses c ON e.c_id = c.c_id
WHERE s.name = 'Raju'
GROUP BY s.name;



