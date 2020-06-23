"""
    This module manage all operations with the contact_details table
"""

from src.utils import queries
from src.utils.filter import contact_filter


class ContactManager:
    """Manage contact_details table"""

    def __init__(self, cnx):
        self.cnx = cnx

    def create(self, contact_object):
        """insert contact object in DB"""
        # filter the data before insert it in DB
        first_name, last_name, phone_number, birthdate = contact_filter(
            contact_object.first_name, 
            contact_object.last_name, 
            contact_object.phone_number, 
            contact_object.birthdate, 
            )
        
        # add data in dictionnary to insert it in the SQL query
        data = {
            'first_name': first_name, 
            'last_name': last_name, 
            'phone_number': phone_number, 
            'birthdate': birthdate, 
            }
        
        # execute SQL insertion
        cursor = self.cnx.cursor()
        cursor.execute(queries.SQL_INSERT_CONTACT, data)
        self.cnx.commit()
        
        cursor.close()


class Contact:
    """Represent contact_details table"""

    def __init__(self, contact_dictionnary):
        self.first_name = contact_dictionnary.get('first_name','')
        self.last_name = contact_dictionnary.get('last_name','')
        self.phone_number = contact_dictionnary.get('phone_number','0000000000')
        self.birthdate = contact_dictionnary.get('birthdate','00-00-0000')

    def __repr__(self):
        """Represent contact_details object"""
        return f"{self.first_name}, {self.last_name}, {self.phone_number}, {self.birthdate}"