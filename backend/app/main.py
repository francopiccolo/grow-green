import os

from flask_migrate import Migrate, upgrade

from src import create_app, db
from src.models import Plant, Category, Product

app = create_app(os.getenv('FLASK_CONFIG') or 'default')
Migrate(app, db, compare_type=True)

@app.cli.command()
def deploy():
    upgrade()
    Plant.insert_plants_from_faker()
    Category.insert_categories()
    Product.insert_products_from_faker()