"""This application is made for the project 6 on OpenClassrooms during the
Python courses The aim of this project is to create and test a MySQL
database."""

#! /usr/bin/env python3
# coding: utf-8

from src.models.database import Database
from insert_test_data import insert_data

if __name__ == "__main__":

    # if DB doesn't exist, init it + connexion + add data
    with Database() as cnx:

        # insert data in DB
        insert_data(cnx)
