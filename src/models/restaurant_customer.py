"""This module manage all operations with the restaurant customer table."""


class RestaurantCustomerManager:
    """Represent the manager of the restaurant customer table."""

    def __init__(self, cnx):
        self.cnx = cnx

    def create(self, restaurant_customer_object):
        """insert relation in DB."""

        for restaurant in restaurant_customer_object.restaurants:
            SQL_INSERT_RESTAURANT_CUSTOMER = """
            INSERT IGNORE INTO Restaurant_Customer (
                customer_id,
                restaurant_id)
                VALUES(
                    (SELECT id FROM Customer WHERE email=%s),
                    (SELECT id FROM Restaurant WHERE name=%s)
                    );
                    """
            cursor = self.cnx.cursor()
            cursor.execute(
                SQL_INSERT_RESTAURANT_CUSTOMER,
                (restaurant_customer_object.customer, restaurant),
            )
            self.cnx.commit()

        cursor.close()


class RestaurantCustomer:
    """Represent restaurant customer table."""

    def __init__(self, customer, restaurants):
        self.restaurants = restaurants
        self.customer = customer

    def __repr__(self):
        """Represent restaurant customer object."""
        return f"{self.customer}, {self.restaurants}"
