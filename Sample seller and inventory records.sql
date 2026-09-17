
INSERT INTO Seller
(Seller_ID, Seller_Name, Email, Phone, Address)
VALUES
(1, 'Arun Traders', 'arun@gmail.com', '9876543210', 'Chennai'),
(2, 'Kavi Electronics', 'kavi@gmail.com', '9876543211', 'Madurai'),
(3, 'Sri Stores', 'sri@gmail.com', '9876543212', 'Coimbatore'),
(4, 'Tech World', 'tech@gmail.com', '9876543213', 'Tirunelveli'),
(5, 'Smart Mart', 'smart@gmail.com', '9876543214', 'Thoothukudi');
SELECT * FROM Seller;

INSERT INTO Inventory
(Inventory_ID, Product_ID, Seller_ID,
 Stock_Quantity, Reorder_Level, Last_Updated)
VALUES
(101, 1, 1, 50, 10, '2026-09-01'),
(102, 2, 2, 0, 15, '2026-09-02'),
(103, 3, 3, 120, 20, '2026-09-03'),
(104, 4, 4, 8, 10, '2026-09-04'),
(105, 5, 5, 75, 25, '2026-09-05');
SELECT * FROM Inventory;
