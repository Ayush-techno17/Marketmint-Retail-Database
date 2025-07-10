USE Marketmint;
-- Insertion of Data

-- Stores Data
INSERT INTO Store (store_id, store_name, address, city, state) VALUES 
('str001', 'SmartMart', 'MG Road', 'Pune', 'Maharashtra'),
('str002', 'EasyBuy', 'Connaught Place', 'New Delhi', 'Delhi'),
('str003', 'Bazaar Express', 'Park Street', 'Kolkata', 'West Bengal'),
('str004', 'QuickKart', 'Banjara Hills', 'Hyderabad', 'Telangana'),
('str005', 'MetroStore', 'Andheri East', 'Mumbai', 'Maharashtra'),
('str006', 'NextCart', 'MI Road', 'Jaipur', 'Rajasthan'),
('str007', 'BigBasket', 'Koramangala', 'Bengaluru', 'Karnataka'),
('str008', 'ValueMart', 'Fraser Road', 'Patna', 'Bihar'),
('str009', 'QuickPick', 'Hazratganj', 'Lucknow', 'Uttar Pradesh'),
('str010', 'DailyNeeds', 'MG Road', 'Kochi', 'Kerala'),
('str011', 'ShopEase', 'MP Nagar', 'Bhopal', 'Madhya Pradesh'),
('str012', 'CityStop', 'Main Road', 'Ranchi', 'Jharkhand'),
('str013', 'MetroKart', 'Dharampeth', 'Nagpur', 'Maharashtra'),
('str014', 'GroFast', 'Rajwada', 'Indore', 'Madhya Pradesh'),
('str015', 'SwiftShop', 'T Nagar', 'Chennai', 'Tamil Nadu');


-- Brand Details
INSERT INTO brand (brand_id, brand_name) VALUES
('brd001', 'Nestle'),
('brd002', 'Samsung'),
('brd003', 'Coca Cola'),
('brd004', 'Tata'),
('brd005', 'Apple'),
('brd006', 'Nike'),
('brd007', 'Adidas'),
('brd008', 'ITC'),
('brd009', 'Colgate'),
('brd010', 'Sony'),
('brd011', 'PepsiCo'),
('brd012', 'LG'),
('brd013', 'Godrej'),
('brd014', 'Dabur'),
('brd015', 'Amul');


-- Product Type
INSERT INTO product_type (type_id, type_name) VALUES
('ptp001', 'packaged food'),
('ptp002', 'electronics'),
('ptp003', 'beverages'),
('ptp004', 'groceries'),
('ptp005', 'apparel'),
('ptp006', 'personal care'),
('ptp007', 'dairy products');

-- Products
INSERT INTO product (product_id, product_name, brand_id, type_id, upc, size, price) VALUES
('prd001', 'Maggie Noodles', 'brd001', 'ptp001', '890105880101', '70g', 15.00),
('prd002', 'KitKat Bar', 'brd001', 'ptp001', '890123456789', '35g', 20.00),
('prd003', 'Galaxy S22', 'brd002', 'ptp002', '880609412345', '128GB', 74999.00),
('prd004', 'Coca Cola Can', 'brd003', 'ptp003', '890176100101', '330ml', 35.00),
('prd005', 'Tata Salt', 'brd004', 'ptp004', '890140000001', '1kg', 25.00),
('prd006', 'iPhone 15', 'brd005', 'ptp002', '190198765432', '256GB', 79999.00),
('prd007', 'Nike Air Max', 'brd006', 'ptp005', '001913456789', 'UK9', 5999.00),
('prd008', 'Adidas Tee', 'brd007', 'ptp005', '002345678912', 'M', 1999.00),
('prd009', 'Sunfeast Biscuits', 'brd008', 'ptp001', '890172108765', '150g', 25.00),
('prd010', 'Colgate Paste', 'brd009', 'ptp006', '890123098765', '150g', 50.00),
('prd011', 'Bravia TV 55"', 'brd010', 'ptp002', '490123456789', '55in', 64999.00),
('prd012', 'Pepsi 500ml', 'brd011', 'ptp003', '890176100102', '500ml', 35.00),
('prd013', 'LG Fridge 260L', 'brd012', 'ptp002', '880899334455', '260L', 24999.00),
('prd014', 'Godrej Safe', 'brd013', 'ptp002', '890123009900', '40L', 8999.00),
('prd015', 'Dabur Honey', 'brd014', 'ptp006', '890120702345', '250g', 199.00),
('prd016', 'Amul Butter', 'brd015', 'ptp007', '890126200015', '100g', 55.00),
('prd017', 'Amul Cheese', 'brd015', 'ptp007', '890126200025', '200g', 90.00),
('prd018', 'Sprite 500ml', 'brd003', 'ptp003', '890176100103', '500ml', 35.00),
('prd019', 'Pepsi Black', 'brd011', 'ptp003', '890176100104', '500ml', 40.00),
('prd020', 'Nike Shorts', 'brd006', 'ptp005', '001913456790', 'L', 2499.00),
('prd021', 'Amul Milk', 'brd015', 'ptp007', '890126200035', '1L', 60.00),
('prd022', 'Nestle Milkmaid', 'brd001', 'ptp001', '890105880202', '400g', 125.00),
('prd023', 'Adidas Cap', 'brd007', 'ptp005', '002345678913', 'Free', 999.00),
('prd024', 'Colgate Brush', 'brd009', 'ptp006', '890123098766', '1pc', 25.00),
('prd025', 'Dabur Red Paste', 'brd014', 'ptp006', '890120702346', '200g', 55.00);


-- Inventory
INSERT INTO inventory (store_id, product_id, quantity_available) VALUES
-- Store str001
('str001', 'prd001', 120),
('str001', 'prd002', 65),
('str001', 'prd004', 90),
('str001', 'prd009', 110),
('str001', 'prd016', 60),
('str001', 'prd017', 60),

-- Store str002
('str002', 'prd005', 115),
('str002', 'prd009', 130),
('str002', 'prd010', 85),
('str002', 'prd016', 70),
('str002', 'prd024', 90),
('str002', 'prd025', 100),

-- Store str003
('str003', 'prd004', 95),
('str003', 'prd007', 80),
('str003', 'prd012', 65),
('str003', 'prd019', 70),
('str003', 'prd022', 60),

-- Store str004
('str004', 'prd003', 90),
('str004', 'prd006', 20),
('str004', 'prd008', 75),
('str004', 'prd011', 120),
('str004', 'prd020', 60),
('str004', 'prd024', 100),

-- Store str005
('str005', 'prd001', 110),
('str005', 'prd002', 130),
('str005', 'prd015', 85),
('str005', 'prd017', 95),
('str005', 'prd022', 90),

-- Store str006
('str006', 'prd007', 115),
('str006', 'prd012', 85),
('str006', 'prd019', 95),
('str006', 'prd025', 80),

-- Store str007
('str007', 'prd003', 130),
('str007', 'prd014', 60),
('str007', 'prd016', 90),
('str007', 'prd024', 55),

-- Store str008
('str008', 'prd006', 95),
('str008', 'prd013', 90),
('str008', 'prd015', 75),
('str008', 'prd021', 100),

-- Store str009
('str009', 'prd004', 80),
('str009', 'prd012', 110),
('str009', 'prd014', 90),
('str009', 'prd020', 65),

-- Store str010
('str010', 'prd004', 85),
('str010', 'prd009', 130),
('str010', 'prd018', 100),
('str010', 'prd025', 95),

-- Store str011
('str011', 'prd001', 110),
('str011', 'prd005', 90),
('str011', 'prd015', 105),
('str011', 'prd023', 85),

-- Store str012
('str012', 'prd002', 95),
('str012', 'prd008', 75),
('str012', 'prd014', 80),
('str012', 'prd017', 100),

-- Store str013
('str013', 'prd001', 100),
('str013', 'prd009', 85),
('str013', 'prd012', 90),
('str013', 'prd021', 100),
('str013', 'prd024', 90),
('str013', 'prd025', 15),

-- Store str014
('str014', 'prd004', 75),
('str014', 'prd010', 70),
('str014', 'prd015', 105),
('str014', 'prd024', 100),

-- Store str015
('str015', 'prd001', 130),
('str015', 'prd002', 105),
('str015', 'prd008', 90),
('str015', 'prd020', 85);


-- Customers
INSERT INTO Customer (customer_id, customer_name, email, phone, address, city, date_joined) VALUES
('cus001', 'Ananya Sharma', 'ananya01@mail.com', '9123456780', '34 MG Road', 'Mumbai', '2023-01-12'),
('cus002', 'Rohit Verma', 'rohitv@mail.com', '9812345678', '22 Park Lane', 'Delhi', '2022-11-08'),
('cus003', 'Kiran Kumar', 'kiran.k@mail.com', '9988776655', '16 BTM Layout', 'Bengaluru', '2024-02-20'),
('cus004', 'Neha Patel', 'neha_88@mail.com', '9876543210', '11 VIP Road', 'Ahmedabad', '2023-06-15'),
('cus005', 'Amit Singh', 'amit01@mail.com', '9345678923', '9 Fraser Town', 'Hyderabad', '2023-09-01'),
('cus006', 'Priya Nair', 'priyanair@mail.com', '8899001122', '23 Marine Drive', 'Kochi', '2022-12-05'),
('cus007', 'Suresh Rao', 'srao77@mail.com', '9784561230', '56 MG Road', 'Pune', '2023-10-22'),
('cus008', 'Meena Desai', 'meena_d@mail.com', '9456123478', '89 Tagore St', 'Surat', '2023-04-18'),
('cus009', 'Arjun Kapoor', 'arjunk@mail.com', '9872310456', '47 Civil Lines', 'Jaipur', '2024-01-05'),
('cus010', 'Divya Joshi', 'divya.j@mail.com', '9338876543', '63 Sector 14', 'Gurgaon', '2023-07-29'),
('cus011', 'Kavya Menon', 'kavmen@mail.com', '9090909090', '12 Marine Rd', 'Trivandrum', '2022-08-14'),
('cus012', 'Deepak Reddy', 'deepak_r@mail.com', '9123987654', '67 Ameerpet', 'Hyderabad', '2023-03-12'),
('cus013', 'Sneha Gupta', 'snegupt@mail.com', '9812233445', '45 Andheri West', 'Mumbai', '2023-05-06'),
('cus014', 'Rahul Bose', 'rahulb@mail.com', '9765123098', '89 Gariahat', 'Kolkata', '2024-02-28'),
('cus015', 'Tanya Roy', 'tanyaroy@mail.com', '9988123456', '77 Boring Rd', 'Patna', '2023-11-30');

-- Orders
INSERT INTO orders (order_id, customer_id, store_id, order_date, net_amount) VALUES
('ord001', 'cus001', 'str001', '2024-10-01', 135.00),
('ord002', 'cus003', 'str004', '2025-03-05', 79999.00),
('ord003', 'cus006', 'str002', '2024-12-09', 130.00),
('ord004', 'cus010', 'str009', '2024-11-10', 70.00),
('ord005', 'cus011', 'str011', '2025-03-12', 249.00),
('ord006', 'cus008', 'str005', '2024-10-15', 210.00),
('ord007', 'cus013', 'str001', '2024-12-18', 90.00),
('ord008', 'cus012', 'str007', '2025-03-20', 74999.00),
('ord009', 'cus005', 'str003', '2025-03-21', 110.00),
('ord010', 'cus014', 'str010', '2024-11-25', 55.00),
('ord011', 'cus007', 'str013', '2025-04-01', 835.00),
('ord012', 'cus002', 'str015', '2025-02-08', 4498.00);


-- Bill
INSERT INTO bill (order_id, product_id, quantity, unit_price) VALUES
('ord001', 'prd001', 2, 15.00),
('ord001', 'prd002', 1, 20.00),
('ord001', 'prd009', 2, 25.00),
('ord001', 'prd004', 1, 35.00),

('ord002', 'prd006', 1, 79999.00),

('ord003', 'prd010', 1, 50.00),
('ord003', 'prd024', 1, 25.00),
('ord003', 'prd025', 1, 55.00),

('ord004', 'prd004', 2, 35.00),

('ord005', 'prd005', 2, 25.00),
('ord005', 'prd015', 1, 199.00),

('ord006', 'prd001', 3, 15.00),
('ord006', 'prd002', 2, 20.00),
('ord006', 'prd022', 1, 125.00),

('ord007', 'prd017', 1, 90.00),

('ord008', 'prd003', 1, 74999.00),

('ord009', 'prd012', 1, 35.00),
('ord009', 'prd019', 1, 40.00),
('ord009', 'prd004', 1, 35.00),

('ord010', 'prd025', 1, 55.00),

('ord011', 'prd001', 10, 15.00),
('ord011', 'prd021', 3, 60.00),
('ord011', 'prd009', 16, 25.00),
('ord011', 'prd025', 1, 55.00),
('ord011', 'prd024', 2, 25.00),

('ord012', 'prd020', 1, 2499.00),
('ord012', 'prd008', 1, 1999.00);


-- Vendor
INSERT INTO vendor (vendor_id, vendor_name, contact_info) VALUES
('vnd001', 'Nestle India Ltd', 'rajeev.m@nestle.com | 9810011122'),
('vnd002', 'Samsung Electronics', 'anita.r@samsung.com | 9822233344'),
('vnd003', 'Coca-Cola India', 'vikram.s@coca-cola.com | 9876543210'),
('vnd004', 'Tata Chemicals', 'deepa.shah@tatachem.com | 9834567890'),
('vnd005', 'Apple India', 'manish.k@apple.com | 9845678901'),
('vnd006', 'Nike India Pvt Ltd', 'swati.m@nike.com | 9856789012'),
('vnd007', 'Adidas India', 'rohit.k@adidas.com | 9867890123'),
('vnd008', 'ITC Ltd', 'neelima.d@itc.com | 9878901234'),
('vnd009', 'Godrej India', 'aakash.j@sony.com | 9889012345'),
('vnd010', 'Amul', 'priya.p@amul.coop | 9890123456');

-- Shipment
INSERT INTO shipment (shipment_id, vendor_id, store_id, shipment_date, delivery_date) VALUES
('shp001', 'vnd001', 'str001', '2024-12-01', '2024-12-03'),
('shp002', 'vnd003', 'str005', '2025-01-10', '2025-01-22'),
('shp003', 'vnd002', 'str003', '2024-11-15', '2024-11-18'),
('shp004', 'vnd005', 'str009', '2025-02-01', '2025-02-09'),
('shp005', 'vnd004', 'str015', '2024-12-20', '2024-12-22'),
('shp006', 'vnd010', 'str002', '2025-01-05', '2025-01-07'),
('shp007', 'vnd006', 'str010', '2025-03-14', '2025-03-16'),
('shp008', 'vnd007', 'str014', '2025-02-20', '2025-02-25'),
('shp009', 'vnd009', 'str013', '2025-01-25', '2025-01-27'),
('shp010', 'vnd008', 'str004', '2024-12-28', '2024-12-30');

-- Shipment Details
INSERT INTO ShipmentDetails (shipment_id, product_id, quantity_shipped) VALUES
('shp001', 'prd006', 20),
('shp001', 'prd010', 100),
('shp001', 'prd021', 50),

('shp002', 'prd013', 10),
('shp002', 'prd008', 80),

('shp003', 'prd003', 25),
('shp003', 'prd006', 15),
('shp003', 'prd011', 5),
('shp003', 'prd023', 40),
('shp003', 'prd010', 50),

('shp004', 'prd021', 30),
('shp004', 'prd008', 45),
('shp004', 'prd018', 95),

('shp005', 'prd003', 12),
('shp005', 'prd006', 2),
('shp005', 'prd011', 5),
('shp005', 'prd013', 3),

('shp006', 'prd023', 30),
('shp006', 'prd018', 70),

('shp007', 'prd008', 60),
('shp007', 'prd021', 50),
('shp007', 'prd010', 80),
('shp007', 'prd011', 10),

('shp008', 'prd006', 15),
('shp008', 'prd013', 10),
('shp008', 'prd003', 5),
('shp008', 'prd018', 120),
('shp008', 'prd023', 65),

('shp009', 'prd010', 125),
('shp009', 'prd008', 90),

('shp010', 'prd011', 10),
('shp010', 'prd021', 75),
('shp010', 'prd006', 5);



