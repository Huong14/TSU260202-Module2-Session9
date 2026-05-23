USE session9;

CREATE VIEW view_customer_contact AS
SELECT cus_id, cus_name, email, phone FROM customers;

SELECT * FROM view_customer_contact;