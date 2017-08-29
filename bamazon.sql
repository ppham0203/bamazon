DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  id INTEGER NOT NULL AUTO_INCREMENT,
  item_id INTEGER (10) NULL,
  product_name VARCHAR (70) NULL,
  department_name VARCHAR (70) NULL,
  price DECIMAL (10,2) NULL,
  stock_quantity INTEGER (10) NULL,
  PRIMARY KEY (id)
);

use bamazon;
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (123, "razor", "bath", 4.00, 10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (124, "blender", "appliance", 45.00, 25);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (125, "Samsung 3D TV", "electronics", 800.00, 19);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (126, "blowdryer", "bath", 30.00, 45);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (129, "Fan", "appliance", 40.00, 74);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (133, "macbook pro", "electronics", 1200.00, 62);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (130, "adidas ultraboost", "apparel", 180.00, 124);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (128, "Gucci Sliders", "apparel", 190.00, 12);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (148, "Supreme Hat", "apparel", 95.00, 23);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (165, "facewash", "bath", 3.00, 179);
