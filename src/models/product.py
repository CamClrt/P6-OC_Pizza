"""This module manage all operations with the product table."""

from src.models.category import Category, CategoryManager
from src.models.vat import Vat, VatManager


class ProductManager:
    """Represent the manager of the product table."""

    def __init__(self, cnx):
        self.cnx = cnx

    def create(self, product_object):
        """insert object in DB."""

        # create VAT if doesn't exist
        vat_mng = VatManager(self.cnx)
        vat_mng.create(product_object.vat)

        # create Category if doesn't exist
        cat_mng = CategoryManager(self.cnx)
        cat_mng.create(product_object.category)

        # create product
        SQL_INSERT_PRODUCT = """
        INSERT IGNORE INTO Product (
            name,
            price_excluding_tax,
            vat_100_id,
            category_id)
            VALUES (
                %(product_name)s,
                %(price_excluding_tax)s, (
                    SELECT id FROM Vat
                    WHERE vat_100=%(vat_100)s), (
                        SELECT id FROM Category
                        WHERE name=%(category)s)
                        );
                        """
        cursor = self.cnx.cursor()
        cursor.execute(SQL_INSERT_PRODUCT, product_object.data)
        self.cnx.commit()

        cursor.close()


class Product:
    """Represent product table."""

    def __init__(self, data, recipe):
        self.name = data.get("product_name")
        self.price_excluding_tax = data.get("price_excluding_tax")
        self.vat = Vat(data)
        self.category = Category(data)
        self.data = data
