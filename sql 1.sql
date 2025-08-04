
-- Customers Table
CREATE TABLE Customers (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15),
    Address VARCHAR(200),
    Join_Date DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Categories Table
CREATE TABLE Categories (
    Category_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL UNIQUE,
    Description VARCHAR(400)
);

-- Products Table
CREATE TABLE Products (
    Product_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Category_ID INT,
    Price DECIMAL(10,2) NOT NULL CHECK (Price >= 0),
    Description TEXT,
    FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID)
);

-- Orders Table
CREATE TABLE Orders (
    Order_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT,
    Order_Date DATE DEFAULT CURRENT_TIMESTAMP,
    Status ENUM('Pending', 'Shipped', 'Delivered', 'Cancelled') DEFAULT 'Pending',
    Total_Amount DECIMAL(10,2) CHECK (Total_Amount >= 0),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

-- Order_Items Table
CREATE TABLE Order_Items (
    OrderItem_ID INT AUTO_INCREMENT PRIMARY KEY,
    Order_ID INT,
    Product_ID INT,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    Price DECIMAL(10,2) NOT NULL CHECK (Price >= 0),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);

-- Payments Table
CREATE TABLE Payments (
    Payment_ID INT AUTO_INCREMENT PRIMARY KEY,
    Order_ID INT,
    Payment_Date DATE DEFAULT CURRENT_TIMESTAMP,
    Amount DECIMAL(10,2) NOT NULL CHECK (Amount >= 0),
    Payment_Method ENUM('Credit Card', 'Debit Card', 'UPI', 'Net Banking', 'Cash on Delivery'),
    Status ENUM('Pending', 'Completed', 'Failed') DEFAULT 'Pending',
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);

