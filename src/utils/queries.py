"""
    This module store all the SQL queries
"""

from src.utils.config import DATABASE_NAME

SQL_DB_DIRECTORY = 'select @@datadir;'

SQL_CREATE_DB = "CREATE DATABASE " \
                + DATABASE_NAME + \
                " DEFAULT CHARACTER SET 'utf8';"

SQL_USE_DB = "USE " + DATABASE_NAME + ";"

SQL_SHOW_TABLES = "SHOW TABLES;"

TABLES = {}