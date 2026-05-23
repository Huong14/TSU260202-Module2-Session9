DELIMITER //
CREATE PROCEDURE insert_customer(
    IN in_cus_name VARCHAR(50),
    IN in_email VARCHAR(100),
    IN in_phone VARCHAR(15),
    IN in_address VARCHAR(255)
)
BEGIN
    INSERT INTO customers(cus_name, email, phone, address)
    VALUES (in_cus_name, in_email, in_phone, in_address);

    SELECT "Thêm mới khách hàng thành công" AS message;
END //
DELIMITER ;

CALL insert_customer('Trần Văn A','tva@gmail.com','0904467777','Cần Thơ');