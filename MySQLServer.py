import mysql.connector

sql = "CREATE DATABASE IF NOT EXISTS alx_book_store;"

mycursor.execute(sql)
print(f"Database 'alx_book_store' created successfully!")

try:
    mydb = mysql.connector.connect(host="localhost", user="root", passwd="1234")
    conn.close()
except mysql.connector.Error:
    print(f"Error: Failed to connect to the database.")