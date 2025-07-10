USE Marketmint;

-- 1 -- 
-- Total Orders per Store

SELECT s.store_id, s.store_name,
    SUM(b.quantity) AS total_orders
FROM store s
LEFT JOIN orders o
ON s.store_id = o.store_id
LEFT JOIN bill b
ON o.order_id = b.order_id
GROUP BY s.store_id, s.store_name
ORDER BY total_orders DESC;

-- 2 --
-- Top 5 Best-Selling Products (by Quantity)

SELECT p.product_id, p.product_name,
    SUM(b.quantity) AS total_quantity_sold
FROM bill b
JOIN product p 
ON b.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 5;

-- 3 --
-- Which stores have the highest number of distinct products in inventory?

SELECT store_id, COUNT(DISTINCT product_id) AS distinct_products
FROM Inventory
GROUP BY store_id
ORDER BY distinct_products DESC;

-- 4 -- 
-- Find all shipments that took more than 5 days to deliver

SELECT shipment_id, shipment_date, delivery_date, 
       (delivery_date - shipment_date) AS delivery_time_days
FROM Shipment
WHERE (delivery_date - shipment_date) > 5;

-- 5 --
-- Total 8 Brands (by Revenue)

SELECT br.brand_id, br.brand_name,
    SUM(bi.total_price) AS total_revenue
FROM bill bi
JOIN product p 
ON bi.product_id = p.product_id
JOIN brand br 
ON p.brand_id = br.brand_id
GROUP BY br.brand_id, br.brand_name
ORDER BY total_revenue DESC
LIMIT 8;

-- 6 --
-- Which customers have not placed any orders?

SELECT c.customer_id, c.customer_name
FROM customer c
LEFT JOIN orders o 
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- 7 --
--  Vendor Supply Summary

SELECT v.vendor_id, v.vendor_name,
    COUNT(DISTINCT sd.shipment_id) AS shipments_made,
    SUM(sd.quantity_shipped) AS total_quantity_supplied
FROM vendor v
JOIN shipment s 
ON v.vendor_id = s.vendor_id
JOIN ShipmentDetails sd 
ON s.shipment_id = sd.shipment_id
GROUP BY v.vendor_id, v.vendor_name
ORDER BY total_quantity_supplied;

-- 8 --
-- Number of active customers by city

SELECT c.city, COUNT(DISTINCT o.customer_id) AS active_customers
FROM customer c
JOIN orders o 
ON c.customer_id = o.customer_id
GROUP BY c.city;


