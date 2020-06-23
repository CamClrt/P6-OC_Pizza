"""
    This module manage all operations with the city table
"""

from src.utils import queries
from src.utils.filter import city_filter


class CityManager:
    """Manage city table"""

    def __init__(self, cnx):
        self.cnx = cnx

    def create(self, city_object):
        """insert city object in DB"""
        # filter the data before insert it in DB
        name, zip_code = city_filter(
            city_object.name, 
            city_object.zip_code
            )
        
        # add data in dictionnary to insert it in the SQL query
        data = {
            'name': name, 
            'zip_code': zip_code, 
            }
        
        # execute SQL insertion
        cursor = self.cnx.cursor()
        cursor.execute(queries.SQL_INSERT_CITY, data)
        self.cnx.commit()
        
        cursor.close()


class City:
    """Represent city table"""

    def __init__(self, contact_dictionnary):
        self.name = contact_dictionnary.get('city_name','')
        self.zip_code = contact_dictionnary.get('zip_code','00000')

    def __repr__(self):
        """Represent city object"""
        return f"{self.name}, {self.zip_code}"
