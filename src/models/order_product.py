"""This module manage all operations with the order product table."""


class OrderProductManager:
    """Represent the manager of the order product table."""

    def __init__(self, cnx):
        self.cnx = cnx

    def create(self, order_product_object):
        """insert relation in DB."""

        for detail in order_product_object.order_details:
            product = detail[0]
            quantity = detail[1]
            SQL_INSERT_ORDER_PRODUCT = """
            INSERT IGNORE INTO Order_Product (
                order_id, product_id, quantity)
                VALUES(
                    (SELECT id FROM Purchase_order WHERE order_number=%s),
                    (SELECT id FROM Product WHERE name=%s),
                    %s
                    );
                    """
            cursor = self.cnx.cursor()
            cursor.execute(
                SQL_INSERT_ORDER_PRODUCT, (order_product_object.order_number, product, quantity)
            )
            self.cnx.commit()

        cursor.close()


class OrderProduct:
    """Represent order product table."""

    def __init__(self, order_number, order_details):
        self.order_number = order_number
        self.order_details = order_details

    def __repr__(self):
        """Represent purchase order product object."""
        return f"{self.order_number}, {self.order_details}"
