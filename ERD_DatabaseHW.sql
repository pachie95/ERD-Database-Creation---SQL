CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	address VARCHAR(200) NOT NULL,
	billing_info VARCHAR(300) NOT NULL,
);

CREATE TABLE orders(
	order_id SERIAL PRIMARY KEY, 
	order_date DATE NOT NULL,
	amount NUMERIC(8,2) NOT NULL,
	total_cost NUMERIC(8,2) NOT NULL,
	customer_id INTEGER NOT NULL,
	item_id INTEGER NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY (item_id) REFERENCES product(item_id),
);

CREATE TABLE brand(
	seller_id SERIAL PRIMARY KEY,
	brand_name VARCHAR(100) NOT NULL,
	contact_number VARCHAR(15) NOT NULL,
	address VARCHAR(200) NOT NULL,
);

CREATE TABLE product(
	item_id SERIAL PRIMARY KEY, 
	amount NUMERIC(8,2) NOT NULL,
	prod_name VARCHAR(150) NOT NULL,
	seller_id VARCHAR(150) NOT NULL,
	FOREIGN KEY (seller_id) REFERENCES brand(seller_id),
);