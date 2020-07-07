"""
    This module manage all operations with the vat table
"""


class VatManager:
    """Represent the manager of the vat table"""

    def __init__(self, cnx):
        self.cnx = cnx

    def create(self, vat_object):
        """insert object in DB"""

        SQL_INSERT_VAT = (
            "INSERT IGNORE INTO Vat (vat_100) VALUES (%(vat_100)s);"
        )
        cursor = self.cnx.cursor()
        cursor.execute(SQL_INSERT_VAT, vat_object.data)
        self.cnx.commit()

        cursor.close()


class Vat:
    """Represent vat table"""

    def __init__(self, data):
        self.vat_100 = data.get("vat_100")
        self.data = data

    def __repr__(self):
        """Represent vat object"""
        return f"{self.vat_100}"
