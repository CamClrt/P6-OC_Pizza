"""This module manage all operations with the category table."""


class CategoryManager:
    """Represent the manager of the category table."""

    def __init__(self, cnx):
        self.cnx = cnx

    def create(self, category_object):
        """insert object in DB."""

        # create parent category
        SQL_INSERT_CATEGORY = (
            "INSERT IGNORE INTO Category (name) VALUES (%(category)s);"
        )
        cursor = self.cnx.cursor()
        cursor.execute(SQL_INSERT_CATEGORY, category_object.data)
        self.cnx.commit()


class Category:
    """Represent category table."""

    def __init__(self, data):
        self.name = data.get("category")
        self.data = data

    def __repr__(self):
        """Represent category object."""
        return f"{self.name}"
