from faker import Faker
from random import randrange

class GenerateFakeData():
    """Generate fake data to populate database"""
    def __init__(self):
        self.fake = Faker('fr_FR')

    def fake_address(self, data_number):
        """Generate fake address to populate data base 
        Args:
            data_number (int): Number of queries 
        """
        for _ in range(data_number):
            print(self.fake.address())

    def fake_user(self, data_number):
        """Generate fake users to populate data base 
        Args:
            data_number (int): Number of queries 
        """
        for _ in range(data_number):
            print(f"{self.fake.phone_number()} - {self.fake.name()} {self.fake.last_name()} ")

    def fake_order(self, data_number):
        """Generate fake order to populate data base 
        Args:
            data_number (int): Number of queries 
        """
        
        for _ in range(data_number):
            fake_price = randrange(1, 100)
            fake_quantity = randrange(1, 10)
            print(fake_quantity)
            print()
            print(fake_price,"€")

if __name__ == "__main__":    
    generate_data = GenerateFakeData()
    generate_data.fake_order(20)
    print()