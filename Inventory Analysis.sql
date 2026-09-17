
SELECT COUNT(DISTINCT Product_ID)
       AS Total_Products_Available
FROM Inventory
WHERE Stock_Quantity > 0;

SELECT Product_ID, Seller_ID, Stock_Quantity
FROM Inventory
WHERE Stock_Quantity = 0;

SELECT Product_ID, Stock_Quantity
FROM Inventory
ORDER BY Stock_Quantity DESC;

SELECT AVG(Stock_Quantity)
       AS Average_Inventory_Quantity
FROM Inventory;

SELECT Product_ID, Seller_ID,
       Stock_Quantity, Reorder_Level
FROM Inventory
WHERE Stock_Quantity < Reorder_Level;

SELECT s.Seller_ID,
       s.Seller_Name,
       SUM(i.Stock_Quantity) AS Total_Stock
FROM Seller s
JOIN Inventory i
ON s.Seller_ID = i.Seller_ID
GROUP BY s.Seller_ID, s.Seller_Name;

SELECT p.Product_ID,
       p.Product_Name,
       SUM(i.Stock_Quantity) AS Total_Stock
FROM Product p
JOIN Inventory i
ON p.Product_ID = i.Product_ID
GROUP BY p.Product_ID, p.Product_Name;

SELECT SUM(Stock_Quantity)
       AS Total_Inventory_Quantity
FROM Inventory;

SELECT i.Inventory_ID,
       s.Seller_Name,
       i.Product_ID,
       i.Stock_Quantity,
       i.Reorder_Level
FROM Inventory i
JOIN Seller s
ON i.Seller_ID = s.Seller_ID;

SELECT COUNT(*) AS Out_of_Stock_Count
FROM Inventory
WHERE Stock_Quantity = 0;