"""This module manage all operations with the address table."""

from src.models.city import City, CityManager


class AddressManager:
    """Represent the manager of the address table."""

    def __init__(self, cnx):
        self.cnx = cnx

    def create(self, address_object):
        """insert object in DB."""

        # add the city
        city_mng = CityManager(self.cnx)
        city_mng.create(address_object.city)

        # add address data
        SQL_INSERT_ADDRESS = """
        INSERT IGNORE INTO Address (
            address1,
            address2,
            additional_info,
            city_id)
            VALUES (
                %(address1)s,
                %(address2)s,
                %(add_info)s, (
                    SELECT id FROM City
                    WHERE name=%(city_name)s)
                    );
                    """
        cursor = self.cnx.cursor()
        cursor.execute(SQL_INSERT_ADDRESS, address_object.data)
        self.cnx.commit()

        cursor.close()


class Address:
    """Represent address table."""

    def __init__(self, data):
        self.data = data
        self.address1 = data.get("address1")
        self.address2 = data.get("address2")
        self.add_info = data.get("add_info")
        self.city = City(data)
