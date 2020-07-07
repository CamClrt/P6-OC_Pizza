"""This module manage all operations with the city table."""


class CityManager:
    """Represent the manager of the city table."""

    def __init__(self, cnx):
        self.cnx = cnx

    def create(self, city_object):
        """insert object in DB."""

        SQL_INSERT_CITY = """
        INSERT IGNORE INTO City (
            name,
            zip_code
            ) VALUES (
                %(city_name)s,
                %(zip_code)s
                );
                """
        cursor = self.cnx.cursor()
        cursor.execute(SQL_INSERT_CITY, city_object.data)
        self.cnx.commit()

        cursor.close()


class City:
    """Represent city table."""

    def __init__(self, data):
        self.name = data.get("city_name")
        self.zip_code = data.get("zip_code")
        self.data = data

    def __repr__(self):
        """Represent city object."""
        return f"{self.name}: {self.zip_code}"
