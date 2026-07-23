# SQL-Database-Design-and-Analysis

# 🛒 Project 1: Corner Shop Database Design with SQL

## 📖 Project Overview

This project was completed as part of a **Level 3 Data Technician Skills Bootcamp**.

The aim was to design and implement a relational database for a small retail business (corner shop) to improve the management of inventory, sales, customer information, and a loyalty programme.

The project demonstrates the full database development process, from analysing business requirements and designing the database structure to creating tables, defining relationships, inserting sample data, and considering database maintenance and security.

---

## 🎯 Project Objectives

* Analyse business requirements for a retail database.
* Design a relational database schema.
* Create tables using SQL.
* Define primary and foreign key relationships.
* Populate the database with sample data.
* Apply database best practices for maintenance and security.

---

## 🛠️ Tools Used

* **MySQL Workbench**
* **SQL**
* **Git & GitHub**

---

## 🗂️ Database Structure

The database consists of the following tables:

| Table                                          | Purpose                                                                        |
| ---------------------------------------------- | ------------------------------------------------------------------------------ |
| **Products**                                   | Stores product information including name, category, price and stock quantity. |
| **Customers**                                  | Stores customer details and loyalty points.                                    |
| **Sales**                                      | Records each sales transaction.                                                |
| **SaleItems**                                  | Stores individual products included in each sale.                              |
| **LoyaltyTransactions** *(optional extension)* | Records loyalty points earned or redeemed by customers.                        |

---

## 🔗 Database Relationships

The database uses a relational structure with primary and foreign keys to maintain data integrity.

* One customer can have many sales.
* One sale can contain multiple products.
* One product can appear in many sales.
* The many-to-many relationship between **Sales** and **Products** is resolved using the **SaleItems** junction table.
* Customers can have multiple loyalty transactions.

Relationship summary:

* Customers → Sales *(One-to-Many)*
* Sales → SaleItems *(One-to-Many)*
* Products → SaleItems *(One-to-Many)*
* Customers → LoyaltyTransactions *(One-to-Many)*

---

## 📂 Example SQL

### Creating the database

```sql
CREATE DATABASE CornerShopDB;
```

### Creating a table

```sql
CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL
);
```

### Inserting sample data

```sql
INSERT INTO Products
(product_name, category, price, stock_quantity)

VALUES
('Milk 2L', 'Grocery', 1.80, 40);
```

## 📚 Key Learning Outcomes

Through this project I gained practical experience in:

* Designing relational databases from business requirements.
* Creating SQL tables with appropriate constraints.
* Building relationships using primary and foreign keys.
* Populating databases with sample data.
* Applying database security and maintenance best practices.
* Using MySQL Workbench to implement and manage databases.
