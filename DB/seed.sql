USE store_staffDB;

INSERT INTO department (name)
    VALUES
    ("PRODUCTION"),
    ("ENGINEERING"),
    ("ACCOUNTING"),
    ("SALES"),
    ("IT");

INSERT INTO role (title, salary, department_ID)
Values
    ('Manager', 60000, 1),
    ('Lead Engineer', 70000, 2),
    ('Software Engineer', 50000, 2),
    ('Accountant', 75000, 3),
    ('Marketing Director', 75000, 4),
    ('IT Lead', 80000, 5),
    ('IT tech', 40000, 5)

USE store_staffDB;
INSERT INTO employee(first_name, last_name, role_id, manager_id)
VALUES 
    ("Gavin", "Free", 1, NULL),
    ("Geoff", "Ramsey", 2, 1),
    ("Ryan", "Haywood", 3, NULL),
    ("Michael", "Jones", 4, 2),
    ("Lindsey", "Jones", 5, NULL),
    ("Jack", "Patillo", 6, 3),
    ("Jeremy", "Dooley", 7, NULL)