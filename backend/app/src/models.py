from enum import Enum
import json
import os
from pathlib import Path

from faker import Faker

from src import db

fake = Faker()

class Difficulty(Enum):
    EASY = 1
    MEDIUM = 2
    HARD = 3

class Sunlight(Enum):
    SHADE = 1
    PARTIAL_SHADE = 2
    SUNLIGHT = 3

class Frequency(Enum):
    WEEKLY = 1
    DAILY = 2

# class Soil(Enum):
    
class Plant(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.Text)
    description = db.Column(db.Text)
    picture = db.Column(db.Text)
    difficulty = db.Column(db.Enum(Difficulty))
    sow = db.Column(db.Text)
    grow = db.Column(db.Text)
    harvest = db.Column(db.Text)
    sunlight_level = db.Column(db.Enum(Sunlight))
    # watering_freq = db.Column(db.Enum(Frequency))
    # seed_depth = db.Column(db.Integer)
    # seed_distance = db.Column(db.Integer)
    # sow_to_harvest = db.Column(db.Integer)
    # seasons = db.relationship('Season', backref='plant')
    # soil_type = db.Column(db.Enum(Soil))

    LIST_FIELDS = ['id', 'name', 'picture']
    DETAIL_FIELDS = ['name', 'description', 'picture', 'sow', 'grow', 'harvest']
    PLANTS_DIR = Path('./static/plants/')
    PLANTS_WORDS = [
        'An','area','of','soil','prepared','for','sowing','seeds.','This','usually','involves','weeding','and','raking','to','remove','stones','and','clods,','aiming','to','create','a','fine,','crumbly','soil','texture','and','a','firm,','level','surface.','A','seedbed','is','traditionally','prepared','away','from','the','main','veg','plot','for','starting','off','slow-growing','crops','that','in','the','long','term','need','wide','spacing,','such','as','leeks','and','cabbages,','to','make','best','use','of','space','on','the','main','plot','during','prime','sowing','season.',
        'seedbed','temporarily,','then','later','transplant','to','their','final','position,','as','they','will','grow','into','large','plants','that','need','wide','spacing.',
        'Sow','seeds','either','indoors','or','outside','in','March','or','April,','13mm','(½in)','deep.','If','starting','them','off','indoors,','sow','into',
        'Small','individual','cells,','usually','in','a','tray,','used','for','sowing','seeds.','The','resulting','seedlings','can','be','transplanted','with','minimal','root','disturbance.',
        'modules','or','small',
        'Pots','are','plastic,','metal,','ceramic','(incl.','terracotta)','or','biodegradable','containers','with','drainage','holes','in','their','base.','They','range','in','diameter','typically','from','5-90cm','(2in-3ft),','but','7.5-15cm','(3-5in)','are','most','commonly','used','for','growing','on','plants','and','sowing','seeds','(although','seed','trays','and','seed','pans','(short','pots)','are','also','used','for','seed',
        'pots.','Outdoors,','sow','two','or','three','seeds','every','25–30cm','(10–12in),','then','thin','to','leave','the','strongest','seedling','at','each','point.',
        'Transplant','young','plants','to','their','permanent','position','when','they','have','at','least','five','true','leaves,','spacing','them','60–90cm','(2–3ft)','apart,','and','water','in','well.','They','make','an','attractive','addition','to','flower','borders','as','well','as','veg','plots.',
        'Seed-raised','plants','tend','to','be','variable','and','spiny,','so','only','keep','the','best','plants.','You','can','later','propagate','your','favourites','from','suckers','or','by','dividing','clumps','to','produce','more','identical','plants.',
        'Alternatively,','buy','rooted','suckers','or','container-grown','plants','in','garden','centres','and','online.'
    ]
    
    PLANTS = [
        ('Asparagus', 'https://www.rhs.org.uk/getmedia/fb1ff534-6cd5-4c3c-b9d3-1fe6c59a999f/Asparagus_PUB0028089.jpg?width=940&height=627&ext=.jpg'),
        ('Beetrot', 'https://www.rhs.org.uk/getmedia/895fa789-6e9c-45d9-90d6-87f8d0e30fa7/harvesting-baby-beetroot_pub0002432.jpg?width=940&height=627&ext=.jpg'),
        ('Radish', 'https://www.rhs.org.uk/getmedia/59f5a144-3b58-4ef5-b3d5-660552fbf560/brassica-oleracea-italica-group_adv0000521.jpg?width=940&height=627&ext=.jpg'),
        ('Cabbage', 'https://www.rhs.org.uk/getmedia/3c00ea55-b6e8-4404-89f9-600e5238b273/cabbage_mar0005357.jpg?width=940&height=627&ext=.jpg'),
        ('Broccoli', 'https://www.rhs.org.uk/getmedia/2c926328-af40-46a0-867a-b4a7d112502f/chinese-broccoli940x627.jpg?width=940&height=627&ext=.jpg'),
        ('Spring onion', 'https://www.rhs.org.uk/getmedia/08cf080f-5a71-4ece-9425-4c0f2062d61c/allium-porrum-bandit-_wsyd0005331.jpg?width=940&height=627&ext=.jpg')
    ]

    @classmethod
    def insert_plants_from_files(cls):
        for plant in os.listdir(cls.PLANTS_DIR):
            with open(cls.PLANTS_DIR / plant) as f:
                plant_dict = json.load(f, strict=False)
            plant = Plant.query.filter_by(name=plant_dict['name']).first()
            if plant is None:
                db.session.add(Plant(**plant_dict))
        db.session.commit()
    
    @classmethod
    def insert_plants_from_faker(cls):
        i = 0
        while i <= 50:
            i += 1
            name, picture = fake.random_element(cls.PLANTS)
            plant = Plant(
                        name=name,
                        description=fake.text(ext_word_list=cls.PLANTS_WORDS),
                        picture=picture,
                        difficulty=fake.random_element(list(Difficulty)),
                        sow=fake.text(),
                        grow=fake.text(),
                        harvest=fake.text(),
                        sunlight_level=fake.random_element(list(Sunlight)),
                    )
            db.session.add(plant)
        db.session.commit()


class Category(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.Text)
    products = db.relationship('Product', backref='category')

    CATEGORIES = ['Tools', 'Seeds', 'Containers']

    @classmethod
    def insert_categories(cls):
        for category in cls.CATEGORIES:
            category = Category.query.filter_by(name=category).first()
            if category is None:
                db.session.add(Category(name=category))
            
        db.session.commit()

class Product(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.Text)
    description = db.Column(db.Text)
    picture = db.Column(db.Text)
    sku = db.Column(db.Text)
    price = db.Column(db.Float)
    discounted_price = db.Column(db.Float)
    brand = db.Column(db.Text)
    category_id = db.Column(db.Integer, db.ForeignKey('category.id'))

    LIST_FIELDS = ['id', 'name', 'picture', 'price', 'discounted_price']
    DETAIL_FIELDS = ['name', 'description', 'picture', 'sku', 'price', 'discounted_price', 'brand']
    PRODUCTS_DIR = Path('./static/products/')
    PRODUCTS = [
        ('Containers', 'Pot', 'https://img.crocdn.co.uk/images/products2/pr/20/00/04/11/pr2000041122.jpg?width=940&height=940'),
        ('Containers', 'Basket', 'https://img.crocdn.co.uk/images/products2/pr/20/00/04/45/pr2000044527.jpg?width=940&height=940'),
        ('Tools', 'Gloves', 'https://img.crocdn.co.uk/images/products2/pr/20/00/00/68/pr2000006848.jpg?width=940&height=940'),
        ('Tools', 'Mulch', 'https://img.crocdn.co.uk/images/products2/pr/20/00/00/92/pr2000009217.jpg?width=940&height=940'),
        ('Seeds', 'Artichoke', 'https://img.crocdn.co.uk/images/products2/pl/20/00/01/46/pl2000014699.jpg?width=940&height=940'),
        ('Seeds', 'Basil', 'https://img.crocdn.co.uk/images/products2/pl/20/00/01/62/pl2000016224.jpg?width=940&height=940')
    ]

    @classmethod
    def insert_products_from_files(cls):
        for category in os.listdir(cls.PRODUCTS_DIR):
            for product in os.listdir(cls.PRODUCTS_DIR / category):
                print(product)
                with open(cls.PRODUCTS_DIR / category / product) as f:
                    product_dict = json.load(f, strict=False)
                product = Product.query.filter_by(name=product_dict['name']).first()
                if product is None:
                    product_dict['category'] = Category(name=category.capitalize())
                    db.session.add(Product(**product_dict))
        db.session.commit()
    
    @classmethod
    def insert_products_from_faker(cls):
        i = 0
        while i <= 50:
            i += 1
            name, category, picture = fake.random_element(cls.PRODUCTS)
            product = Product(
                        name=name,
                        description=fake.text(ext_word_list=Plant.PLANTS_WORDS),
                        picture=picture,
                        sku='SABLSNRSAR',
                        price=10,
                        discounted_price=9,
                        category=Category(name=category)
                    )
            db.session.add(product)
        db.session.commit()

# class Season(db.Model):
#     id = db.Column(db.Integer, primary_key=True)
#     plant_id = db.Column(db.Integer, db.ForeignKey('plant.id'))
#     city_id = db.Column(db.Integer, db.ForeignKey('city.id'))
#     sow_start = db.Column(db.Date)
#     sow_end = db.Column(db.Date)
#     grow_start = db.Column(db.Date)
#     grow_end = db.Column(db.Date)
#     harvest_start = db.Column(db.Date)
#     harvest_end = db.Column(db.Date)
    
#     def insert_seasons():
#         pass

# class City(db.Model):
#     id = db.Column(db.Integer, primary_key=True)
#     name = db.Column(db.Text)
#     seasons = db.relationship('Season', backref='city')
    
#     @staticmethod
#     def insert_cities():
#         cities = ['Istanbul', 'Cairo', 'Karachi']
#         for city in cities:
#             db.session.add(City(name=city))
#         db.session.commit()

# class Product(db.Model):
#     id = db.Column(db.Integer, primary_key=True)
#     body = db.Column(db.Text)
#     timestamp = db.Column(db.DateTime, index=True, default=datetime.utcnow)
#     author_id = db.Column(db.Integer, db.ForeignKey('user.id'))

# class User(db.Model):
#     id = db.Column(db.BigInteger, primary_key=True, index=True)
#     name = db.Column(db.String(64))
#     email = db.Column(db.String(64), unique=True)
#     profile_pic = db.Column(db.String(64))

#     def __repr__(self):
#         return '<User %r>' % self.name