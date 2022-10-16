class Product {
  int? productId;
  double? productDiscountedPrice;
  String? productName;
  String? productImage;
  double? productPrice;
  ProductInfo? productInfo;

  Product({
    required this.productId,
    required this.productDiscountedPrice,
    required this.productName,
    required this.productImage,
    required this.productPrice,
    required this.productInfo,
  });

  static List<Product> products = [
    Product(
      productId: 1,
      productDiscountedPrice: 4.0,
      productName: 'Wasabi Rocket',
      productImage:
          'https://www.rhs.org.uk/getmedia/ada7442e-1241-4dfb-a912-67fe5861b9cd/Salad-rocket940x627.jpg?width=940&height=627&ext=.jpg',
      productPrice: 5.0,
      productInfo: ProductInfo(
        description:
            "The leaves of this rocket have a distinct wasabi-like flavour, so they will add another layer to your salads. Just as easy to grow as the more commonly grown rocket, it can be treated as a cut and come again crop, so will offer months of delicious leaves.",
        brand: "Grow Green",
        productDiscountedPrice: 4.0,
        productPrice: 5.0,
        name: "Wasabi Rocket",
        picture:
            "https://img.crocdn.co.uk/images/products2/pl/20/00/02/39/pl2000023947.jpg?width=940&height=940",
        sku: "ABCLALALA",
      ),
    ),
    Product(
      productId: 2,
      productDiscountedPrice: 4.0,
      productName: 'Pasum Rocket',
      productImage:
          'https://www.rhs.org.uk/getmedia/ada7442e-1241-4dfb-a912-67fe5861b9cd/Salad-rocket940x627.jpg?width=940&height=627&ext=.jpg',
      productPrice: 5.0,
      productInfo: ProductInfo(
        description:
            "The leaves of this rocket have a distinct wasabi-like flavour, so they will add another layer to your salads. Just as easy to grow as the more commonly grown rocket, it can be treated as a cut and come again crop, so will offer months of delicious leaves.",
        brand: "Dough",
        productDiscountedPrice: 4.0,
        productPrice: 5.0,
        name: "Pasum Rocket",
        picture:
            "https://img.crocdn.co.uk/images/products2/pl/20/00/02/39/pl2000023947.jpg?width=940&height=940",
        sku: "XEMPLO",
      ),
    ),
    Product(
      productId: 3,
      productDiscountedPrice: 4.0,
      productName: 'Sahed Rocket',
      productImage:
          'https://www.rhs.org.uk/getmedia/ada7442e-1241-4dfb-a912-67fe5861b9cd/Salad-rocket940x627.jpg?width=940&height=627&ext=.jpg',
      productPrice: 5.0,
      productInfo: ProductInfo(
        description:
            "The leaves of this rocket have a distinct wasabi-like flavour, so they will add another layer to your salads. Just as easy to grow as the more commonly grown rocket, it can be treated as a cut and come again crop, so will offer months of delicious leaves.",
        brand: "Bling",
        productDiscountedPrice: 4.0,
        productPrice: 5.0,
        name: "Sahed Rocket",
        picture:
            "https://img.crocdn.co.uk/images/products2/pl/20/00/02/39/pl2000023947.jpg?width=940&height=940",
        sku: "CRETIVY",
      ),
    ),
  ];
}

class ProductInfo {
  ProductInfo(
      {this.description,
      this.brand,
      this.productDiscountedPrice,
      this.name,
      this.picture,
      this.sku,
      this.productPrice});

  String? description;
  String? brand;
  double? productDiscountedPrice;
  double? productPrice;
  String? name;
  String? picture;
  String? sku;

  static ProductInfo products = ProductInfo(
    description:
        "Rocket is an easy-to-grow crop that adds a lovely peppery flavour to salads. The younger leaves are milder, more tender and delicately flavoured. Older leaves can also be lightly cooked as a spinach substitute, added to sauces, stir-fried or sauted in olive oil. The flowers are edible too. Rocket is rich in potassium and vitamin C and flourishes in a warm, sunny position.",
    brand:
        "Keep the soil moist, watering in dry spells, to ensure consistent growth and prevent plants running to seed (When a vegetable plant starts flowering and forming seeds, often prematurely, making the crop unusable salad leaves may turn bitter and root crops fail to swell. Adverse weather or changes in day length can cause bolting in a wide range of vegetables, including lettuces, onions , carrots and otheer root crops bolting) prematurely. However, take care not to overwater, as this can dilute the taste. Weed between the plants regularly. Its best to give rocket some shade in hot weather, to prevent the leaves becoming tough and unpalatable. Cover with fleece or make summer sowings in a spot that gets some light shade.",
    productDiscountedPrice: 4.0,
    productPrice: 5.0,
    name: "Rocket",
    picture:
        "https://www.rhs.org.uk/getmedia/ada7442e-1241-4dfb-a912-67fe5861b9cd/Salad-rocket940x627.jpg?width=940&height=627&ext=.jpg",
    sku:
        "Rocket likes in a sunny site with rich, fertile, well-drained soil. It also grows well in containers. Sow direct outdoors from April to early September, scattering the seeds thinly along a drill, 0.51cm (in) deep. If sowing several rows, space them 15cm (6in) apart. For a continuous supply of leaves, sow small batches every two to three weeks. Thin out then A seedling is a young plant grown from seed. seedlings to 15cm (6in) apart when they're large enough to handle, and use the thinnings in salads. If you allow some plants to flower and produce seeds, they'll self-sow to give you new plants without any effort. For autumn and winter crops, sow in August and September in a cool greenhouse or under cloches or fleece.",
  );
}
