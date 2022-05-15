import re
import mysql.connector
from numpy import rec

mydb = mysql.connector.connect(
    host="127.0.0.1", user="trivial_time", password="123qwe**", 
    database='q_a', auth_plugin='mysql_native_password')

db_Info = mydb.get_server_info()
print("Connected to MySQL Server version ", db_Info)

cursor = mydb.cursor()
sql_select_query = "SELECT question FROM q_a.questions ORDER BY RAND() LIMIT 1;"
cursor.execute(sql_select_query)
record = cursor.fetchall()
record = str(record)
record = record.replace("[(",'')
record = record.replace(")]",'')
record = record.replace("'",'')
question = record.replace(",",'')

