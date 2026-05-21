CREATE DATABASE session9;
USE session9;

CREATE TABLE customers(
     cus_id INT PRIMARY KEY AUTO_INCREMENT,
     cus_name VARCHAR(100) NOT NULL,
     email VARCHAR(50) NOT NULL,
     phone VARCHAR(15) NOT NULL,
     adress VARCHAR(255) NOT NULL
);

INSERT INTO customers(cus_name, email, phone, adress)
VALUES ('Alice','alice@gmail.com',1234567890,'Hanoi'),
	   ('Bob','bob@gmail.com',1234567891,'Haiphong'),
       ('Carol','carol@gmail.com',1234567892,'Danang'),
       ('David','david@gmail.com',1234567893,'Haugiang'),
       ('Eva','eva@gmail.com',1234567894,'Dongthap'),
       ('Frank','frank@gmail.com',1234567895,'Baclieu');


CREATE UNIQUE INDEX idx_cus_email
ON customers(email);

CREATE INDEX idx_cus_phone
ON customers(phone);

