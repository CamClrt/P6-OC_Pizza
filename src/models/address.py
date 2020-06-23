"""
    This module manage all operations with the address table
"""

from src.utils import queries
from src.utils.filter import address_filter


class AddressManager:
    """Manage address table"""

    def __init__(self, cnx):
        self.cnx = cnx

    def create(self, address_object):
        """insert address object in DB"""
        # filter the data before insert it in DB
        address1, address2, digicode = address_filter(
            address_object.address1, 
            address_object.address2, 
            address_object.digicode, 
            )
        
        # add data in dictionnary to insert it in the SQL query
        data = {
            'address1': address1, 
            'address2': address2, 
            'digicode': digicode, 
            }
        
        # execute SQL insertion
        cursor = self.cnx.cursor()
        cursor.execute(queries.SQL_INSERT_ADDRESS, data)
        self.cnx.commit()
        
        cursor.close()


class Address:
    """Represent address table"""

    def __init__(self, contact_dictionnary):
        self.address1 = contact_dictionnary.get('address1','')
        self.address2 = contact_dictionnary.get('address2','')
        self.digicode = contact_dictionnary.get('digicode','')

    def __repr__(self):
        """Represent address object"""
        return f"{self.address1}, {self.address2}, {self.digicode}"