"""This module manage all operations with the order status table."""


class OrderStatusManager:
    """Represent the manager of the order status table."""

    def __init__(self, cnx):
        self.cnx = cnx

    def create(self, order_status_object):
        """insert relation in DB."""

        SQL_INSERT_ORDER_STATUS = """
        INSERT IGNORE INTO Order_Status (
            purchase_order_id, status_id, date)
            VALUES(
                (SELECT id FROM Purchase_order WHERE order_number=%s),
                (SELECT id FROM Status WHERE label=%s),
                %s
                );
                """
        cursor = self.cnx.cursor()
        cursor.execute(
            SQL_INSERT_ORDER_STATUS,
            (
                order_status_object.order,
                order_status_object.status,
                order_status_object.date,
            ),
        )
        self.cnx.commit()

        cursor.close()


class OrderStatus:
    """Represent order status table."""

    def __init__(self, order, status, date):
        self.order = order
        self.status = status
        self.date = date

    def __repr__(self):
        """Represent purchase order status object."""
        return f"{self.order}, {self.status}, {self.date}"
