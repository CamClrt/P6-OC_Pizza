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
                order_id, product_id, quantity, unit_price_inclVAT)
                VALUES(
                    (SELECT Purchase_order.id FROM Purchase_order
                    WHERE order_number=%s),
                    (SELECT Product.id FROM Product WHERE name=%s),
                    %s,
                    (SELECT
                        (SELECT Product.price_excluding_tax
                        FROM Product WHERE name=%s)
                        *
                        (100 + (
                            SELECT Vat.vat_100 FROM Product
                            INNER JOIN Vat ON Vat.id = Product.vat_100_id
                            WHERE Product.name=%s))/100
                    )
                );
                """
            cursor = self.cnx.cursor()
            cursor.execute(
                SQL_INSERT_ORDER_PRODUCT,
                (
                    order_product_object.order_number,
                    product,
                    quantity,
                    product,
                    product,
                ),
            )
            self.cnx.commit()

        cursor.close()


class OrderProduct:
    """Represent order product table."""

    def __init__(self, order_number, order_details):
        self.order_number = order_number
        self.order_details = order_details
