import os
import pymysql
from dotenv import load_dotenv

# Load variabel lingkungan dari file .env
load_dotenv()

# Mendapatkan nilai variabel lingkungan
db_host = os.getenv('DB_HOST')
db_user = os.getenv('DB_USER')
db_password = os.getenv('DB_PASSWORD')
db_name = os.getenv('DB_NAME')


def create_connection():
    host = db_host
    user = db_user
    password = db_password
    database = db_name

    try:
        connection = pymysql.connect(
            host=host,
            user=user,
            password=password,
            database=database
        )
        print(f'Database connected : {host}')
        return connection
    except Exception as e:
        print(f'Error : ', e)
        return null
