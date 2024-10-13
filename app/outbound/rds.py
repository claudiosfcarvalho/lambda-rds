# criar conexão
import mysql

from app.configuration.variables import var


def create_connection():
    return mysql.connector.connect(
        host=var.DATABASE['host'],
        port=var.DATABASE['port'],
        database=var.DATABASE['database'],
        user=var.DATABASE['user'],
        password=var.DATABASE['password']
    )

def close_connection(connection):
    connection.close()

def execute_select(table, fields, conditions):
    conn = create_connection()
    cursor = conn.cursor()
    if conditions == '' or conditions is None:
        query = f"SELECT {', '.join(fields)} FROM {table}"
    else:
        query = f"SELECT {', '.join(fields)} FROM {table} WHERE {conditions}"
    cursor.execute(query)
    ret = cursor.fetchall()
    cursor.close()
    close_connection(conn)
