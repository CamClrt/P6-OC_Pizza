"""
    This module insert a set of data in order to test the database
"""

from faker import Faker

from src.models.city import CityManager, City
from src.models.contact_details import ContactManager, Contact
from src.models.address import AddressManager, Address


def insert_data(cnx):
    "insert data in the database"

    fake = Faker()
    #fake.seed(0)

    # establishment

    dico = {
        'name':'établissement n°1', 
        'city_name':'Asnières-sur-Seine', 
        'zip_code':'92600', 
        'first_name':'clarret', 
        'last_name':'camille', 
        'phone_number':'0658222890', 
        'birthdate':'19/09/1988', 
        'address1':"34 av d'Agenteuil", 
        'address2':"étage 1 - porte gauche",
        'digicode':'92A34', 
    }
    
    city_mng = CityManager(cnx)
    city_mng.create(City(dico))

    contact_mng = ContactManager(cnx)
    contact_mng.create(Contact(dico))

    address_mng = AddressManager(cnx)
    address_mng.create(Address(dico))


    # user
    
    
    # stock
     
    
    # product
    
    
    # order

                