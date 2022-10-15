from flask import Blueprint, jsonify

from src.models import Plant, Product

main = Blueprint('main', __name__)

@main.route("/plant")
def plant_list():
    plants = Plant.query.all()
    response = []
    for plant in plants:
        response.append({field:getattr(plant, field) for field in Plant.LIST_FIELDS})
    return jsonify(response)

@main.route("/plant/<string:search_term>")
def plant_search(search_term):
    pass

@main.route("/plant/<int:id>")
def plant(id):
    plant = Plant.query.get(id)
    response = {field:getattr(plant, field) for field in Plant.DETAIL_FIELDS}
    return response

@main.route("/product")
def product_list():
    products = Product.query.all()
    response = []
    for product in products:
        response.append({field:getattr(product, field) for field in Product.LIST_FIELDS})
    return jsonify(response)

@main.route("/product/<string:search_term>")
def product_search(search_term):
    pass

@main.route("/product/<int:id>")
def product(id):
    product = Product.query.get(id)
    response = {field:getattr(product, field) for field in Product.DETAIL_FIELDS}
    return response