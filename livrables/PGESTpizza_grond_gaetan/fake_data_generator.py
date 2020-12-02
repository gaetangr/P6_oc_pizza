from random import randrange

from faker import Faker

""" print(f"INSERT INTO user (id, first_name, name, email) VALUES")
for i in range(20):
    first_name = fake.first_name()
    last_name = fake.last_name()
    print(f"   (NULL, '{first_name}', '{last_name}', '{first_name}.{last_name}@gmail.com')")
print(";") """


class GenerateFakeData:
    """Generate fake data to populate database using the"""

    def __init__(self):
        """set self.fake = [fr_FR] for french datas"""
        self.fake = Faker("en_US")

    def fake_address(self, data_number=20):
        """Generate fake address to populate data base
        Args:
            data_number (int): Number of queries
        """
        for _ in range(data_number):

            print(
                f"INSERT INTO \"Address\" (id, phone_number, street_name, city, zip_code,\"id_Order\", \"id_Restaurant\", \"id_User\") VALUES (default, '{self.fake.phone_number()}', '{self.fake.street_address()}','{self.fake.city()}', {self.fake.postcode()}, {randrange(1, 4)}, {randrange(1, 4)}, {randrange(1, 17)});"
            )

    def fake_user(self, data_number=20):
        """Generate fake users to populate data base
        Args:
            data_number (int): Number of queries
        """
        for _ in range(data_number):
            print(
                f"INSERT INTO \"User\" (id, first_name, last_name, email, password, \"id_Role\") VALUES (default, '{self.fake.name()}', '{self.fake.last_name()}','{self.fake.email()}', '{self.fake.password(40)}', {randrange(1,3)});"
            )

    def fake_recette(self, data_number=9):
        """Generate fake recettes to populate data base
        Args:
            data_number (int): Number of queries
        """
        for _ in range(data_number):
            print(
                f"INSERT INTO \"Recette\" (id, name) VALUES (default, '{self.fake.paragraph(nb_sentences=1)}');"
            )

    def fake_review(self, data_number=9):
        """Generate fake reviews to populate data base
        Args:
            data_number (int): Number of queries
        """
        for _ in range(data_number):
            print(
                f"INSERT INTO \"Reviews\" (id, content) VALUES (default, '{self.fake.paragraph(nb_sentences=1)}');"
            )

    def fake_role(self):
        """Generate fake roles to populate data base"""
        print(f"INSERT INTO \"Role\" (id, role) VALUES (default, 'staff');")
        print(f"INSERT INTO \"Role\" (id, role) VALUES (default, 'customer');")
        print(f"INSERT INTO \"Role\" (id, role) VALUES (default, 'admin');")
        print(f"INSERT INTO \"Role\" (id, role) VALUES (default, 'manager');")
        print(
            f"INSERT INTO \"Role\" (id, role) VALUES (default, 'delivrery_employee');"
        )

    def fake_category(self):
        """Generate fake categorie to populate data base"""
        print(
            f"INSERT INTO \"Category\" (id, name, \"id_Product\") VALUES (default, 'Pizza', {randrange(1, 4)});"
        )
        print(
            f"INSERT INTO \"Category\" (id, name, \"id_Product\") VALUES (default, 'Soda', {randrange(1, 4)});"
        )
        print(
            f"INSERT INTO \"Category\" (id, name, \"id_Product\") VALUES (default, 'Extra', {randrange(1, 4)});"
        )
        print(
            f"INSERT INTO \"Category\" (id, name, \"id_Product\") VALUES (default, 'Divers', {randrange(1, 4)});"
        )

    def fake_payment(self):
        """Generate fake payment to populate data base"""
        print(
            f"INSERT INTO \"PaymentMethod\" (id, type) VALUES (default, 'credit card');"
        )
        print(f"INSERT INTO \"PaymentMethod\" (id, type) VALUES (default, 'cash');")
        print(f"INSERT INTO \"PaymentMethod\" (id, type) VALUES (default, 'paypal');")

    def fake_product(self):
        """Generate fake products to populate data base"""
        print(
            f"INSERT INTO \"Product\" (id, name, \"id_Recette\") VALUES (default, 'Pizza 78 fromages', 2);"
        )
        print(
            f"INSERT INTO \"Product\" (id, name, \"id_Recette\") VALUES (default, 'Pizza ananas nutella', 2);"
        )
        print(
            f"INSERT INTO \"Product\" (id, name, \"id_Recette\") VALUES (default, 'Pizza pesto thon', 1);"
        )
        print(
            f"INSERT INTO \"Product\" (id, name, \"id_Recette\") VALUES (default, 'Pizza choucroute', 2);"
        )
        print(f"INSERT INTO \"Product\" (id, name) VALUES (default, 'Coca Cola');")

    def fake_order(self):
        """Generate fake orders to populate data base"""
        print(
            f"INSERT INTO \"Order\" (id, description, \"id_DelivreryMode\", \"id_OrderStatus\", \"id_PaymentMethod\", \"id_User\") VALUES (default, 'Commande restaurant', {randrange(1,2)}, {randrange(1,2)}, {randrange(1,2)}, {randrange(1,19)});"
        )
        print(
            f"INSERT INTO \"Order\" (id, description, \"id_DelivreryMode\", \"id_OrderStatus\", \"id_PaymentMethod\", \"id_User\") VALUES (default, 'Commande restaurant', {randrange(1,2)}, {randrange(1,2)}, {randrange(1,2)}, {randrange(1,19)});"
        )

    def fake_orderline(self):
        """Generate fake orders line to populate data base"""
        print(
            f'INSERT INTO "OrderLine" (id, price, quantity, \"id_Order\", \"id_Product\")\
                                VALUES (default, {randrange(1,90)}, {randrange(1,9)}, {randrange(1,2)}, {randrange(1,4)});'
        )
        print(
            f'INSERT INTO "OrderLine" (id, price, quantity, \"id_Order\", \"id_Product\")\
                                VALUES (default, {randrange(1,90)}, {randrange(1,9)}, {randrange(1,2)}, {randrange(1,4)});'
        )

    def fake_restaurant(self):
        """Generate fake restaurants to populate data base"""
        print(
            f"INSERT INTO \"Restaurant\" (id, name, \"id_Reviews\") VALUES (default, 'Chez Fredo', 2);"
        )
        print(
            f"INSERT INTO \"Restaurant\" (id, name, \"id_Reviews\") VALUES (default, 'Pizz AH!', 2);"
        )
        print(
            f"INSERT INTO \"Restaurant\" (id, name, \"id_Reviews\") VALUES (default, 'Le regina', 2);"
        )
        print(
            f"INSERT INTO \"Restaurant\" (id, name, \"id_Reviews\") VALUES (default, 'Miam PIZZ', 2);"
        )

    def fake_delivrery(self):
        """Generate fake delivrey to populate data base"""
        print(f"INSERT INTO \"DelivreryMode\" (id, type) VALUES (default, 'Pick-up');")
        print(
            f"INSERT INTO \"DelivreryMode\" (id, type) VALUES (default, 'Delivrery');"
        )

    def fake_cartes(self):
        """Generate fake cartes to populate data base"""
        print(
            f"INSERT INTO \"Carte\" (id, description, \"id_Product\", \"id_Restaurant\") VALUES (default, 'Carte pizzas', 1, 2);"
        )
        print(
            f"INSERT INTO \"Carte\" (id, description, \"id_Product\", \"id_Restaurant\") VALUES (default, 'Carte pizzas', 2, 1);"
        )
        print(
            f"INSERT INTO \"Carte\" (id, description, \"id_Product\", \"id_Restaurant\") VALUES (default, 'Carte pizzas', 3, 4);"
        )
        print(
            f"INSERT INTO \"Carte\" (id, description, \"id_Product\", \"id_Restaurant\") VALUES (default, 'Carte boissons', 4, 1);"
        )

    def fake_orderstatus(self):
        """Generate fake order_status to populate data base"""
        print(
            f"INSERT INTO \"OrderStatus\" (id, created_date, updated_date) VALUES (default, '21/02/2020 12:29', '21/02/2020 14:29');"
        )
        print(
            f"INSERT INTO \"OrderStatus\" (id, created_date, updated_date) VALUES (default, '24/02/2020 12:29', '24/02/2020 14:29');"
        )

    def fake_stockline(self):
        """Generate fake stockline to populate data base"""
        print(
            f'INSERT INTO "StockLine" (id, \"id_Product\", \"id_Restaurant\", quantity)\
            VALUES (default, {randrange(1,4)}, {randrange(1,3)}, {randrange(1,10)});'
        )


if __name__ == "__main__":
    print("\n\n################ DEBUT REQUEST #######################\n")

 
    generate_data = GenerateFakeData()

    generate_data.fake_stockline()
    print()
    generate_data.fake_orderline()
    print()
    generate_data.fake_address()
    print()
    generate_data.fake_cartes()
    print()
    generate_data.fake_category()
    print()
    generate_data.fake_delivrery()
    print()
    generate_data.fake_order()
    print()
    generate_data.fake_orderstatus()
    print()
    generate_data.fake_payment()
    print()
    generate_data.fake_product()
    print()
    generate_data.fake_recette()
    print()
    generate_data.fake_restaurant()
    print()
    generate_data.fake_review()
    print()
    generate_data.fake_role()
    print()
    generate_data.fake_user()

    print("\n################ END REQUEST #######################\n")
