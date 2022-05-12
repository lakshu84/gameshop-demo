-- CRUD
CREATE DATABASE IF NOT EXISTS games_db;
USE games_db;
CREATE TABLE IF NOT EXISTS customers (
customer_id INT PRIMARY KEY AUTO_INCREMENT, 
customer_name VARCHAR(50) NOT NULL,
address VARCHAR(100) NOT NULL,
phone_no CHAR(11) NOT NULL,
email VARCHAR(30) NOT NULL,
dob DATE NOT NULL
);

CREATE TABLE orders(
order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT NOT NULL,
order_date DATE NOT NULL,
order_status CHAR(1) NOT NULL,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE games(
game_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100) NOT NULL,
unit_price DOUBLE NOT NULL,
in_stock INT NOT NULL,
platform VARCHAR(20) NOT NULL,
age_rating INT NOT NULL
);

CREATE TABLE orders_games(
orders_games_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT NOT NULL,
game_id INT NOT NULL,
quantity INT NOT NULL,
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (game_id) REFERENCES games(game_id)
);

-- ALTER TABLE games
-- DROP COLUMN genre;

