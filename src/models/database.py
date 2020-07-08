"""This module manage all operations with the database."""

import os.path

import mysql.connector
from mysql.connector import Error
from progress.bar import Bar

from src.utils.config import (
    DATABASE_NAME,
    DB_SQL_FILE,
    HOST_NAME,
    USER_NAME,
    USER_PASSWORD,
)


class Database:
    """" Represent the MySQL database."""

    def __init__(
        self,
        database_name=DATABASE_NAME,
        host_name=HOST_NAME,
        user_name=USER_NAME,
        user_password=USER_PASSWORD,
        db_sql_file=DB_SQL_FILE,
    ):

        self.database_name = database_name
        self.host_name = host_name
        self.user_name = user_name
        self.user_password = user_password
        self.db_sql_file = db_sql_file
        self.connexion = None

    def __enter__(self):
        """Allow the DB connexion."""
        self.connexion = self.connect()
        return self.connexion

    def __exit__(self, *args):
        """Close the DB connexion."""
        self.connexion.close()

    def create(self, cursor):
        """Create database with sql file."""
        try:
            with open(self.db_sql_file, "r") as sql_file:
                sql_commands = sql_file.read().split(";")

            # Execute each command
            with Bar("Progression", max=len(sql_commands)) as bar:
                for sql_command in sql_commands:
                    cursor.execute(sql_command)
                    bar.next()

        except Error as err:
            print(f"L'erreur '{err}' est survenue")

    def connect(self):
        """Init and/or connect database."""
        cnx = None
        try:
            cnx = mysql.connector.connect(
                user=self.user_name,
                password=self.user_password,
                host=self.host_name,
            )

            cursor = cnx.cursor()
            SQL_DB_DIRECTORY = "select @@datadir;"
            cursor.execute(SQL_DB_DIRECTORY)
            path = cursor.fetchone()

        except Error as err:
            print(f"L'erreur '{err}' est survenue")

        print("\n", "> Connexion <".center(100, "-"), "\n")

        if len(path) != 0:
            url_db = path[0] + self.database_name
            if os.path.exists(url_db):
                SQL_USE_DB = "USE " + DATABASE_NAME + ";"
                cursor.execute(SQL_USE_DB)
            else:
                # create database and tables
                print("\n", "> Création des tables <".center(100, "-"), "\n")
                self.create(cursor)

        cursor.close()
        return cnx
