"""
    This module manage all operations with the database
"""

import os.path
from progress.bar import Bar

import mysql.connector
from mysql.connector import Error

from src.utils import config
from src.utils import queries


class Database:
    """"Represent the MySQL database"""

    def __init__(
        self,
        database_name=config.DATABASE_NAME,
        host_name=config.HOST_NAME,
        user_name=config.USER_NAME,
        user_password=config.USER_PASSWORD,
        db_sql_file=config.DB_SQL_FILE
    ):

        self.database_name = database_name
        self.host_name = host_name
        self.user_name = user_name
        self.user_password = user_password
        self.db_sql_file = db_sql_file
        self.database = None

    def __enter__(self):
        """Allow the DB connection"""
        self.database = self.connect()
        return self.database

    def __exit__(self, *args):
        """Close the DB connection"""
        self.database.close()
    
    def create(self, mycursor):
        """Create database with sql file"""
        try:
            with open(self.db_sql_file, 'r') as sql_file:
                sql_commands = sql_file.read().split(';')
            
            #Execute each command
            with Bar("Progression", max=len(sql_commands)) as bar:
                for sql_command in sql_commands:
                    mycursor.execute(sql_command)
                    
                    bar.next()

        except Error as err:
            print(f"L'erreur '{err}' est survenue")
    
    def insert_data(self):
        """Insert data in database with [TODO: .csv or .json] file"""
        pass

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
        
        except Error as err:
            print(f"L'erreur '{err}' est survenue")
        
        print("\n", "> Connexion réussie <".center(100,"-"), "\n")

        if len(path) != 0:
            url_db = path[0] + self.database_name
            if os.path.exists(url_db):
                mycursor.execute(queries.SQL_USE_DB)
            else:

                # create database and tables
                print("\n", "> BD création des tables <".center(100,"-"), "\n")
                self.create(mycursor)

                # insert data in DB
                print("\n", "> Insertion des données <".center(100,"-"), "\n")
                #TODO: insertion de la méthode insert_data

        mycursor.close()
        return database
