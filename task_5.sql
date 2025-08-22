import mysql.connector

mydb = mysql.connector.connect(host="localhost", user="root", passwd="1234")

result = "INSERT INTO customer (customer_id, customer_name, email, address) VALUES (1, "Cole Baidoo", "cbaidoo@sandtech.com", "123 Happiness Ave.") WHERE TABLE_SCHEMA = 'alx_book_store';"

mycursor.execute(result)