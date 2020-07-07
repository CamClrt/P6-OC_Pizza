"""
    This module manage all operations with the purchase order table
"""

from src.models.payment_method import Payment_method, Payment_methodManager
from src.models.status import Status, StatusManager


class PurchaseOrderManager:
    """Represent the manager of the order table"""

    def __init__(self, cnx):
        self.cnx = cnx

    def create(self, order_object):
        """insert object in DB"""

        # create payment_method if doesn't exist
        payment_method_mng = Payment_methodManager(self.cnx)
        payment_method_mng.create(order_object.payment_method)

        # create status if doesn't exist
        status_mng = StatusManager(self.cnx)
        status_mng.create(order_object.status)

        # create order
        SQL_INSERT_ORDER = """
        INSERT IGNORE INTO Purchase_order (
            date, 
            order_number, 
            status_id, 
            payment_method_id, 
            restaurant_id, 
            customer_id) 
            VALUES (
                %(date)s, 
                %(order_number)s, 
                (SELECT id FROM Status 
                WHERE label=%(order_status)s), 
                (SELECT id FROM Payment_method 
                WHERE name=%(order_payment_method)s), 
                (SELECT id FROM Restaurant 
                WHERE name=%(order_restaurant)s), 
                (SELECT id FROM Customer 
                WHERE email=%(order_customer)s)
                );
                """
        cursor = self.cnx.cursor()
        cursor.execute(SQL_INSERT_ORDER, order_object.data)
        self.cnx.commit()

        cursor.close()


class PurchaseOrder:
    """Represent purchase order table"""

    def __init__(self, data):
        self.status = Status(data)
        self.payment_method = Payment_method(data)
        self.restaurant = data.get("order_restaurant")
        self.customer = data.get("order_customer")
        self.date = data.get("date")
        self.order_number = data.get("order_number")
        self.data = data

    def __repr__(self):
        """Represent purchase order object"""
        elements = [
            self.date,
            self.order_number,
            self.restaurant,
            self.status,
            self.payment_method,
            self.customer,
        ]
        return ",".join(elements)
