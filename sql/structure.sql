use general;

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS Product_catagories;
DROP TABLE IF EXISTS Product;
DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS User_details;
DROP TABLE IF EXISTS Role;
DROP TABLE IF EXISTS User_role;
SET FOREIGN_KEY_CHECKS=1;


CREATE TABLE Product_catagories (
	catagory_id INT NOT NULL AUTO_INCREMENT,
	catagory_name VARCHAR(50) NOT NULL,
	
	PRIMARY KEY(catagory_id)
);

CREATE TABLE Product (
	product_id INT NOT NULL AUTO_INCREMENT,
	product_name VARCHAR(50) NOT NULL,
	img VARCHAR(255) null DEFAULT 'img/500x325.png',
	description TEXT,
	catagory_id INT NOT NULL,
	
	PRIMARY KEY(product_id),
	FOREIGN KEY(catagory_id) REFERENCES Product_catagories(catagory_id)
	ON UPDATE CASCADE
	ON DELETE RESTRICT
);

-- ------------------------------------------------------------

CREATE TABLE User (
	user_id INT NOT NULL AUTO_INCREMENT,
	username VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	
	PRIMARY KEY(user_id)
); 

CREATE TABLE User_details (
	user_details_id INT NOT NULL AUTO_INCREMENT,
	dob TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	user_id INT NOT NULL,
	
	PRIMARY KEY(user_details_id),
	FOREIGN KEY(user_id) REFERENCES User(user_id)
	ON UPDATE CASCADE
	ON DELETE RESTRICT
); 


CREATE TABLE Role (
	role_id INT NOT NULL AUTO_INCREMENT,
	role VARCHAR(50) NOT NULL,
	
	PRIMARY KEY(role_id)
); 


CREATE TABLE User_role (
	user_role_id INT NOT NULL,
	user_id INT NOT NULL,
	
	PRIMARY KEY(user_role_id),
	FOREIGN KEY(user_role_id) REFERENCES Role(role_id),
	FOREIGN KEY(user_id) REFERENCES User(user_id)
	ON UPDATE CASCADE
	ON DELETE RESTRICT
); 

