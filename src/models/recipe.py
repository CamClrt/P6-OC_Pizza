"""This module manage all operations with the recipe table."""


class RecipeManager:
    """Represent the manager of the recipe table."""

    def __init__(self, cnx):
        self.cnx = cnx

    def create(self, recipe_object):
        """insert object in DB."""

        for recipe_detail in recipe_object.recipe:
            ingredient = recipe_detail[0]
            quantity = recipe_detail[1]
            SQL_INSERT_RECIPE = """
            INSERT IGNORE INTO Recipe (
                ingredient_id,
                product_id,
                quantity)
                VALUES (
                    (SELECT id FROM Ingredient WHERE name=%s),
                    (SELECT id FROM Product WHERE name=%s),
                    %s);
                    """
            cursor = self.cnx.cursor()
            cursor.execute(
                SQL_INSERT_RECIPE,
                (ingredient, recipe_object.product, quantity,),
            )
            self.cnx.commit()

        cursor.close()


class Recipe:
    """Represent recipe table."""

    def __init__(self, instructions, product_name):
        self.recipe = instructions
        self.product = product_name
