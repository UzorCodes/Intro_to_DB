import mysql.connector

mydb = mysql.connector.connect(host="localhost", user="root", passwd="1234")

authors = "CREATE TABLE Authors(author_id INT PRIMARY KEY, author_name VARCHAR(215) NOT NULL);"

books = "CREATE TABLE Books(book_id INT PRIMARY KEY, author_id INT, title VARCHAR(130) NOT NULL, price DOUBLE, publication_date DATE, FOREIGN KEY (author_id) REFERENCES Authors(author_id));"


customers = "CREATE TABLE Customers(customer_id INT PRIMARY KEY, customer_name VARCHAR(215), email VARCHAR(215), address TEXT);"


orders = "CREATE TABLE Orders(order_id INT PRIMARY KEY, customer_id INT, order_date DATE, FOREIGN KEY (customer_id) REFERENCES Customers(customer_id));"


order_details = "CREATE TABLE Order_Details(orderdetailid INT PRIMARY KEY, order_ID INT, book_id INT, quantity DOUBLE, FOREIGN KEY (order_id) REFERENCES Orders(order_id), FOREIGN KEY (book_id) REFERENCES Books(book_id));"

mycursor.execute(authors, books, customers, orders, order_details)