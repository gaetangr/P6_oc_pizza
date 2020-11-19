import pytest
from oc_pizza.main import GenerateFakeData

generate_data = GenerateFakeData()
class TestMain:
    
    def test_fake_address(self):
        assert generate_data.fake_address() == ()