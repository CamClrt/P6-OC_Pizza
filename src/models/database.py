"""
    This module manage all operations with the database
"""

import os.path

import mysql.connector
from mysql.connector import Error

from utils import config
from utils import queries


class Database:
    """"Represent the MySQL database"""

    def __init__(
        self,
        database_name=config.DATABASE_NAME,
        host_name=config.HOST_NAME,
        user_name=config.USER_NAME,
        user_password=config.USER_PASSWORD,
    ):

        self.database_name = database_name
        self.host_name = host_name
        self.user_name = user_name
        self.user_password = user_password
        self.database = None

    def __enter__(self):
        """Allow the DB connection"""
        self.database = self.connect()
        return self.database

    def __exit__(self, *args):
        """Close the DB connection"""
        self.database.close()

    def connect(self):
        """Init and/or connect database"""
        database = None
        try:
            database = mysql.connector.connect(
                user=self.user_name,
                password=self.user_password,
                host=self.host_name,
            )

            mycursor = database.cursor()
            mycursor.execute(queries.SQL_DB_DIRECTORY)
            path = mycursor.fetchone()

            print("\n", "> Connexion réussie <".center(100,"-"), "\n")

            if len(path) != 0:
                url_db = path[0] + self.database_name
                if os.path.exists(url_db):
                    mycursor.execute(queries.SQL_USE_DB)
                else:

                    # create database and tables
                    mycursor.execute(queries.SQL_CREATE_DB)
                    print("> BD créée avec succès <".center(100,"-"), "\n")

                    mycursor.execute(queries.SQL_USE_DB)
                    #for name, query in queries.TABLES.items():
                        #mycursor.execute(query)
                        #print(f"> La table '{name}' a été créée avec succès")

                    # insert data in DB
                    print("> Insertion des données <".center(100,"-"), "\n")
                    pass

        except Error as err:
            print(f"L'erreur '{err}' est survenue")

        mycursor.close()
        return database
