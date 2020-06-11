"""
    This application is made for the project 6 on OpenClassrooms during the
    Python courses
    The aim of this project is to create and test a MySQL database
"""

#! /usr/bin/env python3
# coding: utf-8

from src.models.database import Database

if __name__ == "__main__":
    
    #if DB doesn't exist, init it + insert values
    with Database() as database:
        
        #connect to DB and display report
        database.connect()
