"""This module manage all operations with the ingredient table."""

from src.models.stock import Stock, StockManager


class IngredientManager:
    """Represent the manager of the ingredient table."""

    def __init__(self, cnx):
        self.cnx = cnx

    def create(self, ingredient_object):
        """insert object in DB."""

        SQL_INSERT_INGREDIENT = """
        INSERT IGNORE INTO Ingredient (name) VALUES (%(ingredient_name)s);
        """
        cursor = self.cnx.cursor()
        cursor.execute(SQL_INSERT_INGREDIENT, ingredient_object.data)
        self.cnx.commit()

        # insert stock
        stock_obj = Stock(ingredient_object.data)
        stock_mng = StockManager(self.cnx)
        stock_mng.create(stock_obj)

        cursor.close()


class Ingredient:
    """Represent ingredient table."""

    def __init__(self, data):
        self.name = data.get("ingredient_name")
        self.data = data

    def __repr__(self):
        """Represent ingredient object."""
        return f"{self.name}"
