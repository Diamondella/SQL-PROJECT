CREATE DATABASE BankDb;
USE BankDb;
DROP TABLE Customers;
CREATE TABLE Customers(
customer_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
birth_date DATE,
email VARCHAR(100) UNIQUE,
phone_number VARCHAR(15),
account_balance DECIMAL(10,2) CHECK(account_balance >0),
registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
SELECT * FROM Customers;
INSERT INTO Customers (first_name, last_name, birth_date, email, phone_number, account_balance)
VALUES 
('Alice', 'Brown', '1988-03-12', 'alice.brown@example.com', '555-123-4567', 1200.50),
('David', 'Smith', '1995-08-25', 'david.smith@example.com', '555-234-5678', 3200.00),
('Emily', 'White', '1982-11-05', 'emily.white@example.com', '555-345-6789', 500.00),
('Frank', 'Green', '1975-07-15', 'frank.green@example.com', '555-456-7890', 800.75),
('Grace', 'Black', '2001-01-20', 'grace.black@example.com', '555-567-8901', 1500.00);
SELECT first_name, last_name;
SELECT * FROM Customers;
SELECT birth_date FROM Customers;
SELECT email , account_balance FROM Customers WHERE account_balance > 1000;
SELECT * FROM Customers WHERE first_name = "David";
SELECT * FROM Customers WHERE account_balance <= 500 AND account_balance >=1000;
SELECT* FROM Customers WHERE account_balance <= 500 AND account_balance >= 1500; 
