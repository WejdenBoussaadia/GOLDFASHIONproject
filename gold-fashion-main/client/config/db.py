import mysql.connector
from mysql.connector import Error

# open connection
def open_connection():
    try:

        connection = mysql.connector.connect(
            host='localhost',
            database='gold_fashion',
            user='root',
            password=''
        )

        return connection

    except Error as e:
        print('Error: ', e)


# close connection
def close_connection(connection, cursor):
    if connection:
        cursor.close()
        connection.close()
