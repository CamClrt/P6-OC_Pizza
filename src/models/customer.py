"""
    This module manage all operations with the customer table
"""

from src.models.restaurant_customer import (
    RestaurantCustomerManager,
    RestaurantCustomer,
)
from src.models.address import AddressManager, Address
from src.models.restaurant import RestaurantManager, Restaurant


class CustomerManager:
    """Represent the manager of the customer table"""

    def __init__(self, cnx):
        self.cnx = cnx

    def create(self, customer_object):
        """insert object in DB"""

        # Check if the customer already exists
        SQL_SELECT_CUSTOMER = "SELECT * FROM Customer WHERE email=%(email)s;"
        cursor = self.cnx.cursor()
        cursor.execute(SQL_SELECT_CUSTOMER, customer_object.data)
        already_exist = cursor.fetchone()

        if already_exist == None:
            # add the address
            address_mng = AddressManager(self.cnx)
            address_mng.create(customer_object.address)

            # add customer data + foreign key
            SQL_INSERT_CUSTOMER = "INSERT IGNORE INTO Customer (first_name, last_name, phone_number, birthdate, email, password, id_address) VALUES (%(first_name)s, %(last_name)s, %(phone_number)s, %(birthdate)s, %(email)s, %(password)s, (SELECT id FROM Address WHERE address1=%(address1)s AND address2=%(address2)s));"
            cursor.execute(SQL_INSERT_CUSTOMER, customer_object.data)
            self.cnx.commit()

            # link customer with his or their restaurant
            restaurant_customer_object = RestaurantCustomer(
                customer_object.data
            )
            restaurant_customer_mng = RestaurantCustomerManager(self.cnx)
            restaurant_customer_mng.create(restaurant_customer_object)

        cursor.close()


class Customer:
    """Represent customer table"""

    def __init__(self, data):
        self.data = data
        self.first_name = data.get("first_name")
        self.last_name = data.get("last_name")
        self.phone_number = data.get("phone_number")
        self.birthdate = data.get("birthdate")
        self.email = data.get("email")
        self.password = data.get("password")
        self.address = Address(data)
        self.restaurants = []

    def __repr__(self):
        """Represent employee object"""
        return f"{self.first_name}, {self.last_name}, {self.phone_number}, {self.email}, {self.address}, {self.birthdate}"
