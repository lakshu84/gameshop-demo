USE games_db;

INSERT INTO customers(customer_name, address, phone_no, email, dob) VALUES("Jane Bloggs", "123 Fake St.", "03459549444", "janebloggs@eample.com","1989-06-13"), ("Alice Roberts", "456 Not Real Ave.", "0239349399", "alrob@gmail.co.uk", "1998-05-17");

/*UPDATE customers
SET customer_id=customer_id - 2 WHERE customer_id > 1;

DELETE FROM customers
WHERE customer_id = 1;*/