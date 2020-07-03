"""
    This module manage all operations with the stock table
"""


class StockManager:
    """Represent the manager of the stock table"""

    def __init__(self, cnx):
        self.cnx = cnx
    
    def create(self, stock_object):
        """insert object in DB"""

        SQL_INSERT_STOCK = "INSERT IGNORE INTO Stock (restaurant_id, ingredient_id, quantity) VALUES ((SELECT id FROM Restaurant WHERE name=%(ingredient_restaurant)s), (SELECT id FROM Ingredient WHERE name=%(ingredient_name)s), %(ingredient_stock)s);"
        cursor = self.cnx.cursor()
        cursor.execute(SQL_INSERT_STOCK, stock_object.data)
        self.cnx.commit()
        
        cursor.close()


class Stock:
    """Represent stock table"""

    def __init__(self, data):
        self.quantity = data.get('ingredient_stock')
        self.ingredient = data.get('ingredient_name')
        self.restaurant = data.get('ingredient_restaurant')
        self.data = data

    def __repr__(self):
        """Represent stock object"""
        return f"{self.quantity}, {self.ingredient}, {self.restaurant}"
