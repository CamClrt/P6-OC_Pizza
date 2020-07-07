"""This module insert a set of data in order to test the database."""

import random

from faker import Faker
from passlib.hash import pbkdf2_sha256

from data import (CATEGORY, INGREDIENT, PAYMENT_METHOD, PRODUCT, RESTAURANT,
                  STAFF, STATUS, VAT)
from src.models.customer import Customer, CustomerManager
from src.models.employee import Employee, EmployeeManager
from src.models.ingredient import Ingredient, IngredientManager
from src.models.order_product import OrderProduct, OrderProductManager
from src.models.product import Product, ProductManager
from src.models.purchase_order import PurchaseOrder, PurchaseOrderManager
from src.models.recipe import Recipe, RecipeManager
from src.models.restaurant import Restaurant, RestaurantManager
from src.models.restaurant_customer import (RestaurantCustomer,
                                            RestaurantCustomerManager)


def insert_data(cnx):
    """insert data in the database."""
    fake = Faker("fr_FR")
    Faker.seed(123456)
    random.seed(123456)

    # restaurant
    restaurants = RESTAURANT
    restaurant_mng = RestaurantManager(cnx)
    for restaurant in restaurants:
        restaurant_data = {
            "restaurant_name": restaurant,
            "phone_number": fake.pystr_format(string_format="##-##-##-##-##"),
            "address1": fake.street_address(),
            "address2": fake.pystr(min_chars=0, max_chars=100),
            "add_info": fake.pystr_format(string_format="##?##"),
            "city_name": fake.city(),
            "zip_code": fake.postcode(),
        }

        restaurant_obj = Restaurant(restaurant_data)
        restaurant_mng.create(restaurant_obj)

        # Add Lola as Founder
        founder_data = {
            "first_name": "Lola",
            "last_name": "Dupont",
            "phone_number": "00-00-00-00-00",
            "email": "lola.dupont@OC-Pizza.com",
            "password": pbkdf2_sha256.hash(
                fake.pystr(min_chars=6, max_chars=20)
            ),
            "job_name": "Founder",
            "restaurant_name": restaurant,
        }

        founder_obj = Employee(founder_data)
        founder_mng = EmployeeManager(cnx)
        founder_mng.create(founder_obj)

        # employee
        staff = STAFF
        employee_mng = EmployeeManager(cnx)
        for employee_job in staff:
            employee_first_name = fake.first_name()
            employee_last_name = fake.last_name()
            employee_data = {
                "first_name": employee_first_name,
                "last_name": employee_last_name,
                "phone_number": fake.pystr_format(
                    string_format="##-##-##-##-##"
                ),
                "email": f"{employee_first_name}.{employee_last_name}@OC-Pizza.com",
                "password": pbkdf2_sha256.hash(
                    fake.pystr(min_chars=6, max_chars=20)
                ),
                "job_name": employee_job,
                "restaurant_name": restaurant,
            }

            employee_obj = Employee(employee_data)
            employee_mng.create(employee_obj)

    # customer
    customer_mng = CustomerManager(cnx)
    restau_custom_mng = RestaurantCustomerManager(cnx)
    for index in range(50):
        customer_first_name = fake.first_name()
        customer_last_name = fake.last_name()
        customer_data = {
            "first_name": customer_first_name,
            "last_name": customer_last_name,
            "phone_number": fake.pystr_format(string_format="##-##-##-##-##"),
            "email": f"{customer_first_name}.{customer_last_name}@gmail.com",
            "password": pbkdf2_sha256.hash(
                fake.pystr(min_chars=6, max_chars=20)
            ),
            "birthdate": fake.date(),
            "address1": fake.street_address(),
            "address2": fake.pystr(min_chars=0, max_chars=100),
            "add_info": fake.pystr_format(string_format="##?##"),
            "city_name": fake.city(),
            "zip_code": fake.postcode(),
        }

        customer_obj = Customer(customer_data)
        customer_mng.create(customer_obj)

        restaurant_list = random.choices(RESTAURANT, k=random.randint(1, 8))
        restau_custom_obj = RestaurantCustomer(
            customer_data.get("email"), restaurant_list
        )
        restau_custom_mng.create(restau_custom_obj)

    # ingredient & stock
    ingredients = INGREDIENT
    ingredient_mng = IngredientManager(cnx)
    for restaurant in restaurants:
        for ingredient in ingredients:
            ingredient_data = {
                "ingredient_name": ingredient,
                "ingredient_stock": random.randint(0, 25),
                "ingredient_restaurant": restaurant,
            }

            ingredient_obj = Ingredient(ingredient_data)
            ingredient_mng.create(ingredient_obj)

    # product, vat, & category
    recipes = {}
    products = PRODUCT
    product_mng = ProductManager(cnx)
    for product in products:
        product_data = {
            "product_name": product,
            "vat_100": random.choice(VAT),
            "price_excluding_tax": random.randint(9, 20),
            "category": random.choice(CATEGORY),
        }

        recipe_data = []
        recipe_data = [
            (ingredient_recipe, random.randint(1, 3))
            for ingredient_recipe in random.choices(
                INGREDIENT, k=(random.randint(1, 5))
            )
        ]
        recipes[product] = recipe_data

        product_obj = Product(product_data, recipe_data)
        product_mng.create(product_obj)

    # recipe
    recipe_mng = RecipeManager(cnx)
    for recipe_name, instruction in recipes.items():
        recipe_obj = Recipe(instruction, recipe_name)
        recipe_mng.create(recipe_obj)

    # order
    SQL_SELECT_CUSTOMER = "SELECT email FROM Customer;"
    cursor = cnx.cursor()
    cursor.execute(SQL_SELECT_CUSTOMER)
    customer_list = cursor.fetchall()
    order_mng = PurchaseOrderManager(cnx)
    order_prod_mng = OrderProductManager(cnx)

    for order in range(1, 101):
        order_status = random.choice(STATUS)
        order_payment_method = random.choice(PAYMENT_METHOD)
        order_restaurant = random.choice(RESTAURANT)
        order_customer = (random.choice(customer_list))[0]
        order_data = {
            "date": fake.date(),
            "order_number": order,
            "order_status": order_status,
            "order_payment_method": order_payment_method,
            "order_restaurant": order_restaurant,
            "order_customer": order_customer,
        }

        order_obj = PurchaseOrder(order_data)
        order_mng.create(order_obj)

        product_list = random.choices(PRODUCT, k=random.randint(1, 10))
        order_prod_obj = OrderProduct(order, product_list)
        order_prod_mng.create(order_prod_obj)
