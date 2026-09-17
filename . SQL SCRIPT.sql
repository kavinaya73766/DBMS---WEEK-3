USE ecommerce_db;
CREATE TABLE Seller (
    Seller_ID INT PRIMARY KEY AUTO_INCREMENT,
    Seller_Name VARCHAR(100) NOT NULL
);

CREATE TABLE Inventory (
    Inventory_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_ID INT NOT NULL,
    Seller_ID INT NOT NULL,
    Stock_Quantity INT NOT NULL DEFAULT 0,
    Reorder_Level INT NOT NULL DEFAULT 10,
    Last_Updated DATE,

    FOREIGN KEY (Product_ID)
        REFERENCES Product(Product_ID),


    FOREIGN KEY (Seller_ID)
        REFERENCES Seller(Seller_ID)
);
SHOW TABLES;