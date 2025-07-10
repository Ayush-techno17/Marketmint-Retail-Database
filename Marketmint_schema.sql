CREATE DATABASE Marketmint;
USE Marketmint;

-- Stores
CREATE TABLE store (
  store_id VARCHAR(6) PRIMARY KEY,
  store_name VARCHAR(25),
  address VARCHAR(100),
  city VARCHAR(25),
  state VARCHAR(25));

  
-- Brand
CREATE TABLE brand (
  brand_id VARCHAR(6) PRIMARY KEY,
  brand_name VARCHAR(25));

  
-- Product Type
CREATE TABLE product_type (
  type_id VARCHAR(6) PRIMARY KEY,
  type_name VARCHAR(25));


-- Products
CREATE TABLE product (
  product_id VARCHAR(6) PRIMARY KEY,
  product_name VARCHAR(25),
  brand_id VARCHAR(6),
  type_id VARCHAR(6),
  upc VARCHAR(12) UNIQUE,
  size VARCHAR(10),
  price DECIMAL (10,2),
  FOREIGN KEY (brand_id) REFERENCES brand(brand_id) ON DELETE SET NULL,
  FOREIGN KEY (type_id) REFERENCES product_type(type_id) ON DELETE SET NULL
);


-- Inventory
CREATE TABLE inventory (
  store_id VARCHAR(6),
  product_id VARCHAR(6),
  quantity_available INT,
  PRIMARY KEY (store_id, product_id),
  FOREIGN KEY (store_id) REFERENCES store(store_id) ON DELETE CASCADE,
  FOREIGN KEY (product_id) REFERENCES product(product_id) ON DELETE CASCADE
);


-- Customers
CREATE TABLE customer (
  customer_id VARCHAR(6) PRIMARY KEY,
  customer_name VARCHAR(25),
  email VARCHAR(30) UNIQUE,
  phone VARCHAR(20),
  address TEXT,
  city VARCHAR(20),
  date_joined DATE
);


-- Orders
CREATE TABLE orders (
  order_id VARCHAR(6) PRIMARY KEY,
  customer_id VARCHAR(6),
  store_id VARCHAR(6),
  order_date DATE,
  net_amount DECIMAL(10, 2),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE SET NULL,
  FOREIGN KEY (store_id) REFERENCES store(store_id) ON DELETE SET NULL
);


-- Bill
CREATE TABLE bill (
  order_id VARCHAR(6),
  product_id VARCHAR(6),
  quantity INT,
  unit_price DECIMAL(10, 2),
  total_price DECIMAL (10,2) GENERATED ALWAYS AS (quantity * unit_price) STORED,
  PRIMARY KEY (order_id, product_id),
  FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
  FOREIGN KEY (product_id) REFERENCES product(product_id) ON DELETE CASCADE
);



-- Vendor
CREATE TABLE vendor (
  vendor_id VARCHAR(6) PRIMARY KEY,
  vendor_name VARCHAR(25),
  contact_info TEXT);


-- Shipment
CREATE TABLE shipment (
  shipment_id VARCHAR(6) PRIMARY KEY,
  vendor_id VARCHAR(6),
  store_id VARCHAR(6),
  shipment_date DATE,
  delivery_date DATE,
  FOREIGN KEY (vendor_id) REFERENCES vendor(vendor_id) ON DELETE CASCADE,
  FOREIGN KEY (store_id) REFERENCES store(store_id) ON DELETE CASCADE
);

-- Shipment Details
CREATE TABLE ShipmentDetails (
  shipment_id VARCHAR(6),
  product_id VARCHAR(6),
  quantity_shipped INT,
  PRIMARY KEY (shipment_id, product_id),
  FOREIGN KEY (shipment_id) REFERENCES shipment(shipment_id) ON DELETE CASCADE,
  FOREIGN KEY (product_id) REFERENCES product(product_id) ON DELETE CASCADE
);


