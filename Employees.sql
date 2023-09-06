CREATE DATABASE Employees
GO
USE Employees


CREATE TABLE employees(
id int PRIMARY KEY identity(1,1),
surname VARCHAR (50) not null, 
experience int not null,
)

INSERT INTO employees (surname, experience) VALUES
('Иванов', 10),
('Петров', 12),
('Сидоров', 14)


SELECT * FROM employees


SELECT surname FROM employees
WHERE experience = (SELECT MAX(experience) FROM employees
WHERE experience<(SELECT MAX(experience)FROM employees))