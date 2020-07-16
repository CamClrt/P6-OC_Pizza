"""This module manage all operations with the purchase order table."""

from src.models.payment_method import Payment_method, Payment_methodManager


class PurchaseOrderManager:
    """Represent the manager of the order table."""

    def __init__(self, cnx):
        self.cnx = cnx

    def create(self, order_object):
        """insert object in DB."""

        # create payment_method if doesn't exist
        payment_method_mng = Payment_methodManager(self.cnx)
        payment_method_mng.create(order_object.payment_method)

        # create order

        if order_object.order_mode == "livraison":

            SQL_INSERT_ORDER = """
            INSERT IGNORE INTO Purchase_order (
                order_number,
                payment_method_id,
                restaurant_id,
                customer_id,
                status_id,
                order_address1,
                order_address2,
                order_city_name,
                order_zip_code,
                order_date)
                VALUES (
                    %(order_number)s,
                    (SELECT id FROM Payment_method
                    WHERE name=%(order_payment_method)s),
                    (SELECT id FROM Restaurant
                    WHERE name=%(order_restaurant)s),
                    (SELECT id FROM Customer
                    WHERE email=%(order_customer)s),
                    (SELECT id FROM Status
                    WHERE Label=%(order_status)s),
                    (SELECT Address.address1 FROM Address
                    INNER JOIN Customer ON Customer.id_address = Address.id
                    WHERE Customer.email=%(order_customer)s),
                    (SELECT Address.address2 FROM Address
                    INNER JOIN Customer ON Customer.id_address = Address.id
                    WHERE Customer.email=%(order_customer)s),
                    (SELECT City.name FROM City
                    INNER JOIN Address ON Address.city_id = City.id
                    INNER JOIN Customer ON Address.id = Customer.id_address
                    WHERE Customer.email=%(order_customer)s),
                    (SELECT City.zip_code FROM City
                    INNER JOIN Address ON Address.city_id = City.id
                    INNER JOIN Customer ON Address.id = Customer.id_address
                    WHERE Customer.email=%(order_customer)s),
                    %(order_date)s
                );
                """

        else:
            SQL_INSERT_ORDER = """
            INSERT IGNORE INTO Purchase_order (
                order_number,
                payment_method_id,
                restaurant_id,
                customer_id,
                status_id,
                order_address1,
                order_address2,
                order_city_name,
                order_zip_code,
                order_date)
                VALUES (
                    %(order_number)s,
                    (SELECT id FROM Payment_method
                    WHERE name=%(order_payment_method)s),
                    (SELECT id FROM Restaurant
                    WHERE name=%(order_restaurant)s),
                    (SELECT id FROM Customer
                    WHERE email=%(order_customer)s),
                    (SELECT id FROM Status
                    WHERE Label=%(order_status)s),
                    (SELECT Address.address1 FROM Address
                    INNER JOIN Restaurant ON Restaurant.id_address = Address.id
                    WHERE Restaurant.name=%(order_restaurant)s),
                    (SELECT Address.address2 FROM Address
                    INNER JOIN Restaurant ON Restaurant.id_address = Address.id
                    WHERE Restaurant.name=%(order_restaurant)s),
                    (SELECT City.name FROM City
                    INNER JOIN Address ON Address.city_id = City.id
                    INNER JOIN Restaurant ON Address.id = Restaurant.id_address
                    WHERE Restaurant.name=%(order_restaurant)s),
                    (SELECT City.zip_code FROM City
                    INNER JOIN Address ON Address.city_id = City.id
                    INNER JOIN Restaurant ON Address.id = Restaurant.id_address
                    WHERE Restaurant.name=%(order_restaurant)s),
                    %(order_date)s
                );
                """

        cursor = self.cnx.cursor()
        cursor.execute(SQL_INSERT_ORDER, order_object.data)
        self.cnx.commit()

        cursor.close()


class PurchaseOrder:
    """Represent purchase order table."""

    def __init__(self, data):
        self.payment_method = Payment_method(data)
        self.restaurant = data.get("order_restaurant")
        self.customer = data.get("order_customer")
        self.status = data.get("order_status")
        self.date = data.get("date")
        self.order_number = data.get("order_number")
        self.order_mode = data.get("order_mode")
        self.order_date = data.get("order_date")
        self.data = data
