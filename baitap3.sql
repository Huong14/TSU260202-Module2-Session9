CREATE TABLE products(
      pro_id INT PRIMARY KEY AUTO_INCREMENT,
      pro_name VARCHAR(50) NOT NULL,
      price DECIMAL(15,2) NOT NULL CHECK(price > 0),
      stock INT NOT NULL CHECK(stock > 0)
);

INSERT INTO products(pro_name, price, stock) VALUES
           ('ip11',9000000,20),
           ('ip11',9000000,10),
           ('ip11',9000000,15),
           ('ip7',4000000,13),
           ('ip11',9000000,10),
           ('ip12',10000000,11),
           ('ip13',12000000,9),
           ('ip14',14000000,7),
           ('ip15',20000000,5),
           ('ip16',25000000,6),
           ('ip17',30000000,9),
           ('laptopdell',15000000,20),
           ('mouse',200000,30),
           ('keyboard',900000,22),
           ('earphone',1000000,25),
           ('tvsamsung',5000000,5),
           ('tulanh',5000000,4),
           ('quat',100000,20),
           ('maygiat',8000000,4),
           ('noicomdien',1000000,9)
           
DELIMITER //
    CREATE PROCEDURE get_high_value_products()
     BEGIN
	 SELECT * FROM products WHERE price > 1000000;
     END //
DELIMITER ;

CALL get_high_value_products();