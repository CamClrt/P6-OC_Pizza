"""
    This module manage all operations with the restaurant customer table
"""

from data import RESTAURANT


class RestaurantCustomerManager:
    """Represent the manager of the restaurant customer table"""

    def __init__(self, cnx):
        self.cnx = cnx
    
    def create(self, restaurant_customer_object):
        """insert object in DB"""

        restaurants = RESTAURANT

        for restaurant in restaurants:
            SQL_INSERT_RESTAURANT_CUSTOMER = "INSERT IGNORE INTO Restaurant_Customer (customer_id, restaurant_id) VALUES((SELECT id FROM Customer WHERE email=%s), (SELECT id FROM Restaurant WHERE name=%s));"
            cursor = self.cnx.cursor()
            cursor.execute(SQL_INSERT_RESTAURANT_CUSTOMER, (restaurant_customer_object.data.get('email'), restaurant))
            self.cnx.commit()
            
        cursor.close()


class RestaurantCustomer:
    """Represent customer table"""

    def __init__(self, data):
        self.data = data
