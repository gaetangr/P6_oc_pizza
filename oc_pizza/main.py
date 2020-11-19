
from faker import Faker

""" print(f"INSERT INTO user (id, first_name, name, email) VALUES")
for i in range(20):
    first_name = fake.first_name()
    last_name = fake.last_name()
    print(f"   (NULL, '{first_name}', '{last_name}', '{first_name}.{last_name}@gmail.com')")
print(";") """


class GenerateFakeData:
    """Generate fake data to populate database"""

    def __init__(self):
        self.fake = Faker("en_US")

    def fake_address(self, data_number):
        """Generate fake address to populate data base
        Args:
            data_number (int): Number of queries
        """
        for _ in range(data_number):

            print(
                f"INSERT INTO \"Address\" (id, phone_number, street_name, city, zip_code) VALUES (default, '{self.fake.phone_number()}', '{self.fake.street_address()}','{self.fake.city()}', '{self.fake.postcode()}');"
            )

    def fake_user(self, data_number):
        """Generate fake users to populate data base
        Args:
            data_number (int): Number of queries
        """
        for _ in range(data_number):
            print(
                f"INSERT INTO \"User\" (id, first_name, last_name, email, password) VALUES (default, '{self.fake.name()}', '{self.fake.last_name()}','{self.fake.email()}', '{self.fake.password(40)}');"
            )

    def fake_recette(self, data_number):
        """Generate fake recettes to populate data base
        Args:
            data_number (int): Number of queries
        """
        for _ in range(data_number):
            print(
                f"INSERT INTO \"Recette\" (id, name) VALUES (default, '{self.fake.paragraph(nb_sentences=1)}');"
            )

    def fake_review(self, data_number):
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
        print(f"INSERT INTO \"Category\" (id, name) VALUES (default, 'Pizza');")
        print(f"INSERT INTO \"Category\" (id, name) VALUES (default, 'Soda');")
        print(f"INSERT INTO \"Category\" (id, name) VALUES (default, 'Extra');")
        print(f"INSERT INTO \"Category\" (id, name) VALUES (default, 'Divers');")

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
            f"INSERT INTO \"Product\" (id, name) VALUES (default, 'Pizza 78 fromages');"
        )
        print(
            f"INSERT INTO \"Product\" (id, name) VALUES (default, 'Pizza ananas nutella');"
        )
        print(
            f"INSERT INTO \"Product\" (id, name) VALUES (default, 'Pizza pesto thon');"
        )
        print(
            f"INSERT INTO \"Product\" (id, name) VALUES (default, 'Pizza choucroute');"
        )
        print(f"INSERT INTO \"Product\" (id, name) VALUES (default, 'Coca Cola');")

    def fake_restaurant(self):
        """Generate fake restaurants to populate data base"""
        print(f"INSERT INTO \"Restaurant\" (id, name) VALUES (default, 'Chez Fredo');")
        print(f"INSERT INTO \"Restaurant\" (id, name) VALUES (default, 'Pizz AH!');")
        print(f"INSERT INTO \"Restaurant\" (id, name) VALUES (default, 'Le regina');")
        print(f"INSERT INTO \"Restaurant\" (id, name) VALUES (default, 'Miam PIZZ');")


if __name__ == "__main__":
    print("\n\n################ DEBUT REQUEST #######################\n")

    generate_data = GenerateFakeData()
    generate_data.fake_address(800)
    generate_data.fake_category()
    generate_data.fake_payment()
    generate_data.fake_product()
    generate_data.fake_recette(30)
    generate_data.fake_restaurant()
    generate_data.fake_review(30)
    generate_data.fake_role()
    generate_data.fake_user(800)

    print("\n################ END REQUEST #######################\n")
