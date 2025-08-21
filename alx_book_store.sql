CREATE TABLE Books(

Book_ID INT PRIMARY KEY,
Author_ID INT,
Title VARCHAR(130) NOT NULL,
Price DOUBLE,
Publication_date DATE,
FOREIGN KEY (Author_ID) REFERENCES Authors(Author_ID)
);


CREATE TABLE Authors(
Author_ID INT PRIMARY KEY,
Author_Name VARCHAR(215) NOT NULL
);


CREATE TABLE Customers(
Customer_ID INT PRIMARY KEY,
Customer_Name VARCHAR(215),
Email VARCHAR(215),
Address TEXT
);


CREATE TABKE Orders(
Order_ID INT PRIMARY KEY,
Customer_ID INT,
Order_Date DATE,
FOREIGN KEY Customer_ID REFERENCES Customers(Customer_ID)
);


CREATE TABLE Order_Details(
Orderdetailid INT PRIMARY KEY,
Order_ID INT,
Book_ID INT,
quantity DOUBLE,
FOREIGN KEY Order_ID REFERENCES Orders(Order_ID),
FOREIGN KEY Book_ID REFERENCES Books(Book_ID)
);

