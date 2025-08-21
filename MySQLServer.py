import from mysql.connector

sql = "CREATE DATABASE IF NOT EXISTS alx_book_store;"

mycursor.execute(sql)

mydb = mysql.connector.connect(host="localhost", user="root", passwd="1234")