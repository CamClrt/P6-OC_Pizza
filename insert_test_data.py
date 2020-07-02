"""
    This module insert a set of data in order to test the database
"""

from data import RESTAURANT, STAFF
from faker import Faker
from src.models.restaurant import Restaurant, RestaurantManager
from src.models.employee import Employee, EmployeeManager


def insert_data(cnx):
    "insert data in the database"
    fake = Faker('fr_FR')
    Faker.seed(123456)

    # restaurant
    restaurants = RESTAURANT
    for restaurant in restaurants:
        restaurant_data = {
            'restaurant_name': restaurant, 
            'phone_number': fake.pystr_format(string_format='##-##-##-##-##'), 
            'address1': fake.street_address(), 
            'address2': fake.pystr(min_chars=0, max_chars=100),
            'add_info': fake.pystr_format(string_format='##?##'), 
            'city_name': fake.city(), 
            'zip_code': fake.postcode(),
        }

        restaurant_obj = Restaurant(restaurant_data)
        restaurant_mng = RestaurantManager(cnx)
        restaurant_mng.create(restaurant_obj)

        #Add Lola as Founder
        founder_data = {
                'first_name': 'Lola',
                'last_name': 'Dupont',
                'phone_number': '00-00-00-00-00',
                'email': 'lola.dupont@OC-Pizza.com',
                'password': bytes("vive-nos-pizzas", "utf-8"),
                'job_name': "Founder",
                'restaurant_name': restaurant,
            }

        founder_obj = Employee(founder_data)
        founder_mng = EmployeeManager(cnx)
        founder_mng.create(founder_obj)

        # employee
        staff = STAFF
        for employee_job in staff:
            employee_data = {
                'first_name': fake.first_name(),
                'last_name': fake.last_name(),
                'phone_number': fake.pystr_format(string_format='##-##-##-##-##'),
                'email': fake.ascii_company_email(),
                'password': bytes(fake.pystr(min_chars=0, max_chars=100), "utf-8"),
                'job_name': employee_job,
                'restaurant_name': restaurant,
            }

            employee_obj = Employee(employee_data)
            employee_mng = EmployeeManager(cnx)
            employee_mng.create(employee_obj)

    # customer
     
    
    # product
    
    
    # stock


    # order

                