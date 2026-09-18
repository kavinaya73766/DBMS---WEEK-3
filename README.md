# Seller and Inventory Management System

## 1. Project Overview

The **Seller and Inventory Management System** is a database project developed as part of an **E-Commerce Database Management System**.

The system is designed to store seller details, product information, and inventory/stock details. It helps manage the relationship between sellers and products and makes it easier to track available stock.

## 2. Objectives

* To store seller information.
* To maintain product details.
* To manage product stock.
* To maintain seller-product relationships.
* To track stock quantity and reorder level.
* To perform CRUD operations on database records.
* To analyze inventory information using SQL queries.

## 3. Technologies Used

* **Database:** MySQL
* **Language:** SQL
* **Tool:** MySQL Workbench / MySQL Command Line

## 4. Database Structure

The project contains the following main tables:

### Seller

Stores seller information.

* `Seller_ID` – Primary Key
* `Seller_Name` – Name of the seller

### Product

Stores product information.

* `Product_ID` – Primary Key
* `Product_Name` – Name of the product
* `Price` – Price of the product

### Inventory

Stores stock information.

* `Inventory_ID` – Primary Key
* `Product_ID` – Foreign Key
* `Seller_ID` – Foreign Key
* `Stock_Quantity` – Available stock
* `Reorder_Level` – Minimum stock level
* `Last_Updated` – Last updated date

## 5. ER Relationship

The relationship between the tables is:

```text
SELLER (1) -------- (MANY) INVENTORY (MANY) -------- (1) PRODUCT
```

* One seller can have many inventory records.
* One product can have many inventory records.
* `Seller_ID` connects Seller and Inventory.
* `Product_ID` connects Product and Inventory.

## 6. Main Operations

The system supports the following database operations:

### Create

Adding new sellers, products, and inventory records.

### Read

Viewing seller, product, and inventory information.

### Update

Updating seller details and stock information.

### Delete

Deleting records when they are no longer required.

## 7. Inventory Management

The Inventory table helps to monitor:

* Available stock quantity
* Reorder level
* Product information
* Seller information
* Last updated date

When the stock quantity reaches or goes below the reorder level, the product can be identified for restocking.

## 8. Sample Seller Records

| Seller_ID | Seller_Name     |
| --------- | --------------- |
| 1         | ABC Electronics |
| 2         | Tech World      |
| 3         | Digital Store   |

## 9. Sample Inventory Records

| Inventory_ID | Product_ID | Seller_ID | Stock_Quantity | Reorder_Level |
| ------------ | ---------- | --------- | -------------: | ------------: |
| 1            | 1          | 1         |             50 |            10 |
| 2            | 2          | 2         |             30 |             5 |
| 3            | 3          | 3         |             20 |             5 |

## 10. Project Files

```text
Seller-Inventory-Management/
│
├── README.md
├── Seller_Table.sql
├── Inventory_Table.sql
├── Sample_Records.sql
├── CRUD_Operations.sql
├── Inventory_Analysis.sql
└── ER_Diagram.png
```

## 11. Conclusion

The **Seller and Inventory Management System** provides a structured way to manage seller, product, and inventory information in an e-commerce database. The use of primary keys and foreign keys maintains proper relationships between the tables. SQL operations can be used to insert, retrieve, update, delete, and analyze the stored data.
