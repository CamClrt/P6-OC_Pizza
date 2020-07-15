-- order details

SELECT
        Product.name AS 'Détail de la commande n°2', 
        Order_product.quantity AS 'Qté',
        Order_product.unit_price_inclVAT AS 'Prix unitaire TTC',
        (Order_product.quantity*Order_product.unit_price_inclVAT) AS 'Prix total TTC'
FROM
        Purchase_order
            INNER JOIN Order_product ON Purchase_order.ID = Order_product.order_id
            INNER JOIN Product ON Order_product.product_id = Product.ID
WHERE 
        Purchase_order.order_number=2;


-- pending order for a restaurant

SELECT
        Purchase_order.order_number AS 'Commande n°', 
        Status.label AS 'Statut'
FROM 
        Purchase_order
            INNER JOIN Restaurant ON Restaurant.id = Purchase_order.restaurant_id
            INNER JOIN Status ON Status.id = Purchase_order.status_id
WHERE
        Status.label LIKE '%attente%'
AND
        Restaurant.name='Pizzeria n°10';


-- pending order for a customer

SELECT
        Purchase_order.order_number AS 'Commande n°', 
        Status.label AS 'Statut',
        Restaurant.name AS 'Restaurant'
FROM 
        Purchase_order
            INNER JOIN Restaurant ON Restaurant.id = Purchase_order.restaurant_id
            INNER JOIN Status ON Status.id = Purchase_order.status_id
            INNER JOIN Customer ON Customer.id = Purchase_order.customer_id
WHERE
        Status.label LIKE '%attente%'
AND
        Customer.email='Julien.Mallet@gmail.com';


-- the delivery address of a completed order even after the customer has changed his/her address

UPDATE Address
SET address1="52 Avenue Victor Hugo", address2="Ambassade d'Islande"
WHERE
        id=(
            SELECT id_address
            FROM Customer 
            WHERE Customer.email ='Adélaïde.Texier@gmail.com'
        );

UPDATE City
SET name="Paris", zip_code="75016"
WHERE
        id=(
            SELECT city_id
            FROM Address
            INNER JOIN Customer ON Customer.id_address = Address.id
            WHERE Customer.email ='Adélaïde.Texier@gmail.com'
        );

SELECT 
        Purchase_order.order_number AS 'Commande n°', 
        Status.label AS 'Statut', 
        Purchase_order.order_date AS 'Date & heure', 
        CONCAT(
                Purchase_order.order_address1, " ",
                Purchase_order.order_address2, " ",
                Purchase_order.order_city_name, " ",
                Purchase_order.order_zip_code
            ) AS 'Adresse de livraison',
        CONCAT(
                Address.address1, " ",
                Address.address2, " ",
                City.name, " ",
                City.zip_code
            ) AS 'Adresse actuelle du client'
FROM 
        Purchase_order
            INNER JOIN Customer ON Customer.id = Purchase_order.customer_id
            INNER JOIN Address ON Address.id = Customer.id_address
            INNER JOIN City ON City.id = Address.city_id
            INNER JOIN Status ON Status.id = Purchase_order.status_id
WHERE 
        Customer.email ='Adélaïde.Texier@gmail.com'
AND
        Status.label='livrée';


-- the price paid for a pizza in a completed order even if the price has since changed

UPDATE Product
SET price_excluding_tax="10"
WHERE name='MARGHERITA';

SELECT 
        Product.name AS 'Commande n°64', 
        Order_product.unit_price_inclVAT AS 'PU TTC',
        CAST(
            Product.price_excluding_tax*(100 + Vat.vat_100)/100 AS DECIMAL(5,2)
            ) AS 'PU TTC actuel',
        CAST(
            (Product.price_excluding_tax*(100 + Vat.vat_100)/100) - Order_product.unit_price_inclVAT AS DECIMAL(5,2)
            ) AS 'Delta'
FROM 
        Purchase_order
            INNER JOIN Order_product ON Purchase_order.ID = Order_product.order_id
            INNER JOIN Product ON Order_product.product_id = Product.ID
            INNER JOIN Vat ON Vat.id = Product.vat_100_id
WHERE 
        Purchase_order.order_number=64;


-- the list of pizzas for which all the ingredients are in stock

SELECT DISTINCT
            Product.name AS "Produit(s) disponible(s)"
FROM
        Product
            INNER JOIN Recipe ON Recipe.product_id = Product.id
            INNER JOIN Ingredient ON Ingredient.id = Recipe.ingredient_id
            INNER JOIN Stock ON Stock.ingredient_id = Ingredient.id
            INNER JOIN Restaurant ON Restaurant.id = Stock.restaurant_id
WHERE
        Product.name NOT IN (
                SELECT
                        Product.name
                FROM
                        Product
                INNER JOIN Recipe ON Recipe.product_id = Product.id
                INNER JOIN Ingredient ON Ingredient.id = Recipe.ingredient_id
                INNER JOIN Stock ON Stock.ingredient_id = Ingredient.id
                INNER JOIN Restaurant ON Restaurant.id = Stock.restaurant_id
                
                WHERE
                        Restaurant.name = 'Pizzeria n°6'
                AND
                        Stock.quantity - Recipe.quantity <= 0
                GROUP BY
                        Product.name
                        );