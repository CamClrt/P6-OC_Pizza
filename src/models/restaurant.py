"""
    This module manage all operations with the restaurant table
"""

from src.models.address import Address, AddressManager


class RestaurantManager:
    """Represent the manager of the restaurant table"""

    def __init__(self, cnx):
        self.cnx = cnx

    def create(self, restaurant_object):
        """insert object in DB"""

        # Check if the restaurant already exists
        SQL_SELECT_RESTAURANT = (
            "SELECT * FROM Restaurant WHERE name=%(restaurant_name)s;"
        )
        cursor = self.cnx.cursor()
        cursor.execute(SQL_SELECT_RESTAURANT, restaurant_object.data)
        already_exist = cursor.fetchone()

        if already_exist == None:
            # add the address
            address_mng = AddressManager(self.cnx)
            address_mng.create(restaurant_object.address)

            # add restaurant data + foreign key
            SQL_INSERT_RESTAURANT = "INSERT IGNORE INTO Restaurant (name, phone_number, id_address) VALUES (%(restaurant_name)s, %(phone_number)s, (SELECT id FROM Address WHERE address1=%(address1)s AND address2=%(address2)s AND additional_info=%(add_info)s));"

            cursor.execute(SQL_INSERT_RESTAURANT, restaurant_object.data)
            self.cnx.commit()

        cursor.close()


class Restaurant:
    """Represent restaurant table"""

    def __init__(self, data):
        self.data = data
        self.name = data.get("restaurant_name")
        self.phone_number = data.get("phone_number")
        self.address = Address(data)

    def __repr__(self):
        """Represent restaurant object"""
        return f"{self.name}, {self.phone_number}, {self.address}"
