import mysql.connector

mydb = mysql.connector.connect(host="localhost", user="root", passwd="1234")

tabledetails = "SELECT TABLE_NAME, COLUMN_NAME, DATA_TYPE, COLUMN_TYPE, COLUMN_DEFAULT, IS_NULLABLE, CHARACTER_MAXIMUM_LENGTH, NUMERIC_PRECISION, COLUMN_KEY, EXTRA, ORDINAL_POSITION FROM INFORMATION_SCHEMA.COLUMNS WHERE (TABLE_SCHEMA = 'alx_book_store' AND TABLE_NAME = 'Books');"

result = mycursor.execute(tabledetails)

print(f'result')