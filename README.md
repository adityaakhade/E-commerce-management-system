# E-Commerce Management System - SQL Schema

## 📌 Overview
This project is a **database design for an E-Commerce platform**.  
It includes SQL scripts for creating tables, defining relationships, and ensuring normalization.

---

## 🛠 Tools Used
* MySQL Workbench
* GitHub (for submission)

---

## 📂 Database Schema

**Tables:**
1. Customers - Stores customer details.
2. Categories - Stores product categories.
3. Products - Stores product details with foreign key to Categories.
4. Orders - Stores order details with foreign key to Customers.
5. Order_Items - Stores items per order (linking Orders & Products).
6. Payments - Stores payment details for each order.

---

## 🔑 Keys & Constraints
* **Primary Keys:** Unique ID for each table.
* **Foreign Keys:** Relationships between tables.
* **Constraints:** NOT NULL, UNIQUE, CHECK, ENUM.

---

## 📈 ER Diagram
![ER Diagram](ER_Diagram.png)

