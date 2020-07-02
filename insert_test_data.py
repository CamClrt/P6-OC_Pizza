"""
    This module insert a set of data in order to test the database
"""

from data import RESTAURANT, STAFF,
from faker import Faker
from src.models.restaurant import Restaurant, RestaurantManager


def insert_data(cnx):
    "insert data in the database"
    fake = Faker('fr_FR')
    Faker.seed(123456)

    # restaurant
    restaurants = RESTAURANT
    for restaurant in restaurants:
        data = {
            'restaurant_name': restaurant, 
            'phone_number': fake.pystr_format(string_format='##-##-##-##-##'), 
            'address1': fake.street_address(), 
            'address2': fake.pystr(min_chars=0, max_chars=100),
            'add_info': fake.pystr_format(string_format='##?##'), 
            'city_name': fake.city(), 
            'zip_code': fake.postcode(),
        }

        restaurant = Restaurant(data)
        restaurant_mng = RestaurantManager(cnx)
        restaurant_mng.create(restaurant)
    

    # employee
    staff = STAFF
    for employee_job in staff:
        data = {
            'first_name': fake.first_name_nonbinary(),
            'last_name': fake.last_name(),
            'phone_number': fake.pystr_format(string_format='##-##-##-##-##'),
            'email': fake.ascii_company_email(),
            'password': fake.pystr(min_chars=0, max_chars=100),
            'job_name': employee_job,
        }

    # customer
     
    
    # product
    
    
    # stock


    # order

                