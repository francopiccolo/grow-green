class HomeTopPicks {
  int? plantId;
  String? plantName;
  String? plantImage;
  String? plantDesc;

  HomeTopPicks({
    required this.plantId,
    required this.plantName,
    required this.plantImage,
    required this.plantDesc,
  });

  static List<HomeTopPicks> topPicks = [
    HomeTopPicks(
      plantId: 1,
      plantName: 'Perennials',
      plantImage:
          'https://img.crocdn.co.uk/images/affiliates/image-archive/perennials/pl0000001055_461x334.jpg',
      plantDesc: "Put a dazzle display with their colourful and showy flowers.",
    ),
    HomeTopPicks(
      plantId: 2,
      plantName: 'Climbers',
      plantImage:
          'https://img.crocdn.co.uk/images/affiliates/image-archive/climbers/pl0000000008_461x334.jpg',
      plantDesc:
          "Liven up dull walls, fences, obelisks and supports throughout the garden.",
    ),
    HomeTopPicks(
      plantId: 3,
      plantName: 'Bamboo & grasses',
      plantImage:
          'https://img.crocdn.co.uk/images/affiliates/image-archive/grasses/pl2000024653_461x334.jpg',
      plantDesc:
          "Provide year-round structure, colour and form to your garden and patio.",
    ),
  ];
}

class HomePopCat {
  int? plantId;
  String? plantName;
  String? plantImage;
  String? plantTypeA;
  String? plantTypeB;

  HomePopCat({
    required this.plantId,
    required this.plantName,
    required this.plantImage,
    required this.plantTypeA,
    required this.plantTypeB,
  });

  static List<HomePopCat> popularCategories = [
    HomePopCat(
        plantId: 1,
        plantName: 'Bulbs',
        plantImage:
            'https://img.crocdn.co.uk/images/affiliates/image-archive/bulbs/autumn-collection/pl2000030773_461x334.jpg',
        plantTypeA: "Tulip bulbs",
        plantTypeB: "Daffodil bulbs"),
    HomePopCat(
        plantId: 2,
        plantName: 'Grow your own',
        plantImage:
            'https://img.crocdn.co.uk/images/affiliates/image-archive/herbs/pl2000012616_461x334.jpg',
        plantTypeA: "Herbs",
        plantTypeB: "Fruit"),
    HomePopCat(
        plantId: 3,
        plantName: 'Mature shrubs',
        plantImage:
            'https://img.crocdn.co.uk/images/affiliates/image-archive/shrubs/pl2000012912_461x334.jpg',
        plantTypeA: "Flowering",
        plantTypeB: "Low maintenance"),
    HomePopCat(
        plantId: 4,
        plantName: 'Pond plants',
        plantImage:
            'https://img.crocdn.co.uk/images/affiliates/image-archive/pond-plants/pl0000001517_461x334.jpg',
        plantTypeA: "Deep water",
        plantTypeB: "Shallow water"),
    HomePopCat(
        plantId: 5,
        plantName: 'Fire pits & BBQs',
        plantImage:
            'https://img.crocdn.co.uk/images/affiliates/image-archive/fire-pits-bbqs/pr2000029435_card5_461x334.jpg',
        plantTypeA: "Fire pits",
        plantTypeB: "barbecue"),
    HomePopCat(
        plantId: 6,
        plantName: 'Pots & containers',
        plantImage:
            'https://img.crocdn.co.uk/images/affiliates/image-archive/pots/pr2000044992_card3_461x334.jpg',
        plantTypeA: "Pots",
        plantTypeB: "Hanging baskets"),
  ];
}

class HomeTopSellers {
  int? plantId;
  String? plantName;
  String? plantImage;
  String? plantClass;
  double? plantCurrentPrice;
  double? plantPreviousPrice;

  HomeTopSellers({
    required this.plantId,
    required this.plantName,
    required this.plantImage,
    required this.plantClass,
    required this.plantCurrentPrice,
    required this.plantPreviousPrice,
  });

  static List<HomeTopSellers> topSellers = [
    HomeTopSellers(
      plantId: 1,
      plantName: 'Aubergine',
      plantClass: "",
      plantImage:
          'https://www.rhs.org.uk/getmedia/e19756b6-1f14-4495-8444-250d249b54d8/aubergine_pub0021090.jpg?width=940&height=627&ext=.jpg',
      plantCurrentPrice: 9.59,
      plantPreviousPrice: 15.99,
    ),
    HomeTopSellers(
      plantId: 2,
      plantName: 'Beetroot',
      plantClass: "Beetroot",
      plantImage:
          'https://www.rhs.org.uk/getmedia/895fa789-6e9c-45d9-90d6-87f8d0e30fa7/harvesting-baby-beetroot_pub0002432.jpg?width=940&height=627&ext=.jpg',
      plantCurrentPrice: 43.59,
      plantPreviousPrice: 65.99,
    ),
    HomeTopSellers(
      plantId: 3,
      plantName: 'Carrots',
      plantClass: "Carrots",
      plantImage:
          'https://www.rhs.org.uk/getmedia/2e29792d-d556-4bee-a870-f9d657ca9635/daucus-carota-sweet-candle-_pub0012429.jpg?width=940&height=627&ext=.jpg',
      plantCurrentPrice: 0.59,
      plantPreviousPrice: 5.99,
    ),
    HomeTopSellers(
      plantId: 4,
      plantName: 'Chilli peppers',
      plantClass: "Chilli",
      plantImage:
          'https://www.rhs.org.uk/getmedia/b6c8e0a5-cc01-4f18-9182-fc1da27d4cb3/chilli_pepper_mar0010547.jpg?width=940&height=627&ext=.jpg',
      plantCurrentPrice: 18.59,
      plantPreviousPrice: 25.99,
    ),
    HomeTopSellers(
      plantId: 5,
      plantName: 'Peppers',
      plantClass: "Glossy fruits",
      plantImage:
          'https://www.rhs.org.uk/getmedia/e78db8ed-168a-4569-95fd-997fa287d5ce/capsicum-display_pub0007109.jpg?width=697&height=940&ext=.jpg',
      plantCurrentPrice: 23.59,
      plantPreviousPrice: 35.99,
    ),
  ];
}
