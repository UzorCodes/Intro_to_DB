import mysql.connector

mydb = mysql.connector.connect(host="localhost", user="root", passwd="1234")

result = "INSERT INTO customer (customer_id, customer_name, email, address) VALUES (2, "Blessing Malik", "bmalik@sandtech.com", "124 Happiness  Ave."), (3, "Obed Ehoneah", "eobed@sandtech.com", "125 Happiness  Ave."), (4, "Nehemial Kamolu", "nkamolu@sandtech.com", "126 Happiness  Ave.") WHERE TABLE_SCHEMA = 'alx_book_store';"

mycursor.execute(result)