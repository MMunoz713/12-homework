DROP DATABASE IF EXISTS store_staffDB;
CREATE DATABASE store_staffDB;

use store_staffDB;

DROP TABLE IF EXISTS department;

CREATE TABLE department(
    id INIT PRIMARY KEY,
    name VARCHAR (30)
);

DROP TABLE IF EXISTS role;

CREATE TABLE role(
    id INT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT
);

DROP TABLE IF EXISTS employee;

CREATE TABLE employee(
    id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT NOT NULL,
    manager_id INT,
    FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
    FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);