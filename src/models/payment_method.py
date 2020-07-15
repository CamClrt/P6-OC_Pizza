"""This module manage all operations with the payment_method table."""


class Payment_methodManager:
    """Represent the manager of the payment_method table."""

    def __init__(self, cnx):
        self.cnx = cnx

    def create(self, payment_method_object):
        """insert object in DB."""

        SQL_INSERT_PAYMENT_METHOD = """
        INSERT IGNORE INTO Payment_method (name)
        VALUES (%(order_payment_method)s);
        """
        cursor = self.cnx.cursor()
        cursor.execute(SQL_INSERT_PAYMENT_METHOD, payment_method_object.data)
        self.cnx.commit()

        cursor.close()


class Payment_method:
    """Represent payment_method table."""

    def __init__(self, data):
        self.name = data.get("order_payment_method")
        self.data = data
