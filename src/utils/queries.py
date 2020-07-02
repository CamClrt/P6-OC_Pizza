"""
    This module store all the SQL queries.
"""

from src.utils.config import DATABASE_NAME



SQL_DB_DIRECTORY = 'select @@datadir;'

SQL_CREATE_DB = (
    "CREATE DATABASE " + DATABASE_NAME + " DEFAULT CHARACTER SET 'utf8';"
)

SQL_USE_DB = "USE " + DATABASE_NAME + ";"


# CREATE QUERIES

SQL_INSERT_RESTAURANT = "INSERT IGNORE INTO restaurant (name) VALUES (%s);"

SQL_INSERT_ADDRESS = "INSERT IGNORE INTO Address (address1, address2, digicode) VALUES (%(address1)s, %(address2)s, %(digicode)s);"

SQL_INSERT_CITY = "INSERT IGNORE INTO City (name, zip_code) VALUES (%(name)s, %(zip_code)s);"