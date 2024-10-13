import os


class Variables:
    # Database
    DATABASE = {
        'host': os.getenv('DB_HOST'),
        'port': os.getenv('DB_PORT'),
        'database': os.getenv('DB_DATABASE'),
        'user': os.getenv('DB_USER'),
        'password': os.getenv('DB_PASSWORD')
    }

var = Variables()