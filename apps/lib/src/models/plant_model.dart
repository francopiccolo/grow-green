class Plant {
  int? plantId;
  String? plantName;
  String? plantImage;
  PlantInfo? plantInfo;

  Plant({
    required this.plantId,
    required this.plantName,
    required this.plantImage,
    required this.plantInfo,
  });

  static List<Plant> plants = [
    Plant(
      plantId: 1,
      plantName: 'Rocket',
      plantImage:
          'https://www.rhs.org.uk/getmedia/ada7442e-1241-4dfb-a912-67fe5861b9cd/Salad-rocket940x627.jpg?width=940&height=627&ext=.jpg',
      plantInfo: PlantInfo(
        description:
            "Rocket is an easy-to-grow crop that adds a lovely peppery flavour to salads. The younger leaves are milder, more tender and delicately flavoured. Older leaves can also be lightly cooked as a spinach substitute, added to sauces, stir-fried or sauted in olive oil. The flowers are edible too. Rocket is rich in potassium and vitamin C and flourishes in a warm, sunny position.",
        name: "Rocket",
        picture:
            "https://www.rhs.org.uk/getmedia/ada7442e-1241-4dfb-a912-67fe5861b9cd/Salad-rocket940x627.jpg?width=940&height=627&ext=.jpg",
        cycle: [
          PlantCycle(
            month: "January",
            todo: "",
          ),
          PlantCycle(
            month: "February",
            todo: "",
          ),
          PlantCycle(
            month: "MArch",
            todo: "Plant",
          ),
          PlantCycle(
            month: "April",
            todo: "Harvest",
          ),
          PlantCycle(
            month: "May",
            todo: "Harvest",
          ),
          PlantCycle(
            month: "June",
            todo: "Harvest",
          ),
          PlantCycle(
            month: "July",
            todo: "",
          ),
          PlantCycle(
            month: "August",
            todo: "",
          ),
          PlantCycle(
            month: "September",
            todo: "",
          ),
          PlantCycle(
            month: "October",
            todo: "",
          ),
          PlantCycle(
            month: "November",
            todo: "",
          ),
          PlantCycle(
            month: "December",
            todo: "",
          ),
        ],
        details: [
          Details(
            title: "Sow",
            details:
                "Keep the soil moist, watering in dry spells, to ensure consistent growth and prevent plants running to seed (When a vegetable plant starts flowering and forming seeds, often prematurely, making the crop unusable salad leaves may turn bitter and root crops fail to swell. Adverse weather or changes in day length can cause bolting in a wide range of vegetables, including lettuces, onions , carrots and otheer root crops bolting) prematurely. However, take care not to overwater, as this can dilute the taste. Weed between the plants regularly. Its best to give rocket some shade in hot weather, to prevent the leaves becoming tough and unpalatable. Cover with fleece or make summer sowings in a spot that gets some light shade.",
          ),
          Details(
            title: "Grow",
            details:
                "Keep the soil moist, watering in dry spells, to ensure consistent growth and prevent plants running to seed (When a vegetable plant starts flowering and forming seeds, often prematurely, making the crop unusable salad leaves may turn bitter and root crops fail to swell. Adverse weather or changes in day length can cause bolting in a wide range of vegetables, including lettuces, onions , carrots and otheer root crops bolting) prematurely. However, take care not to overwater, as this can dilute the taste. Weed between the plants regularly. Its best to give rocket some shade in hot weather, to prevent the leaves becoming tough and unpalatable. Cover with fleece or make summer sowings in a spot that gets some light shade.",
          ),
          Details(
            title: "Harvest",
            details:
                "Keep the soil moist, watering in dry spells, to ensure consistent growth and prevent plants running to seed (When a vegetable plant starts flowering and forming seeds, often prematurely, making the crop unusable salad leaves may turn bitter and root crops fail to swell. Adverse weather or changes in day length can cause bolting in a wide range of vegetables, including lettuces, onions , carrots and otheer root crops bolting) prematurely. However, take care not to overwater, as this can dilute the taste. Weed between the plants regularly. Its best to give rocket some shade in hot weather, to prevent the leaves becoming tough and unpalatable. Cover with fleece or make summer sowings in a spot that gets some light shade.",
          ),
        ],
      ),
    ),
    Plant(
        plantId: 2,
        plantName: 'Rocket',
        plantImage:
            'https://www.rhs.org.uk/getmedia/ada7442e-1241-4dfb-a912-67fe5861b9cd/Salad-rocket940x627.jpg?width=940&height=627&ext=.jpg',
        plantInfo: PlantInfo(
          description:
              "Rocket is an easy-to-grow crop that adds a lovely peppery flavour to salads. The younger leaves are milder, more tender and delicately flavoured. Older leaves can also be lightly cooked as a spinach substitute, added to sauces, stir-fried or sauted in olive oil. The flowers are edible too. Rocket is rich in potassium and vitamin C and flourishes in a warm, sunny position.",
          name: "Rocket",
          picture:
              "https://www.rhs.org.uk/getmedia/ada7442e-1241-4dfb-a912-67fe5861b9cd/Salad-rocket940x627.jpg?width=940&height=627&ext=.jpg",
          cycle: [
            PlantCycle(
              month: "January",
              todo: "",
            ),
            PlantCycle(
              month: "February",
              todo: "",
            ),
            PlantCycle(
              month: "MArch",
              todo: "Plant",
            ),
            PlantCycle(
              month: "April",
              todo: "Harvest",
            ),
            PlantCycle(
              month: "May",
              todo: "Harvest",
            ),
            PlantCycle(
              month: "June",
              todo: "Harvest",
            ),
            PlantCycle(
              month: "July",
              todo: "",
            ),
            PlantCycle(
              month: "August",
              todo: "",
            ),
            PlantCycle(
              month: "September",
              todo: "",
            ),
            PlantCycle(
              month: "October",
              todo: "",
            ),
            PlantCycle(
              month: "November",
              todo: "",
            ),
            PlantCycle(
              month: "December",
              todo: "",
            ),
          ],
          details: [
            Details(
              title: "Sow",
              details:
                  "Keep the soil moist, watering in dry spells, to ensure consistent growth and prevent plants running to seed (When a vegetable plant starts flowering and forming seeds, often prematurely, making the crop unusable salad leaves may turn bitter and root crops fail to swell. Adverse weather or changes in day length can cause bolting in a wide range of vegetables, including lettuces, onions , carrots and otheer root crops bolting) prematurely. However, take care not to overwater, as this can dilute the taste. Weed between the plants regularly. Its best to give rocket some shade in hot weather, to prevent the leaves becoming tough and unpalatable. Cover with fleece or make summer sowings in a spot that gets some light shade.",
            ),
            Details(
              title: "Grow",
              details:
                  "Keep the soil moist, watering in dry spells, to ensure consistent growth and prevent plants running to seed (When a vegetable plant starts flowering and forming seeds, often prematurely, making the crop unusable salad leaves may turn bitter and root crops fail to swell. Adverse weather or changes in day length can cause bolting in a wide range of vegetables, including lettuces, onions , carrots and otheer root crops bolting) prematurely. However, take care not to overwater, as this can dilute the taste. Weed between the plants regularly. Its best to give rocket some shade in hot weather, to prevent the leaves becoming tough and unpalatable. Cover with fleece or make summer sowings in a spot that gets some light shade.",
            ),
            Details(
              title: "Harvest",
              details:
                  "Keep the soil moist, watering in dry spells, to ensure consistent growth and prevent plants running to seed (When a vegetable plant starts flowering and forming seeds, often prematurely, making the crop unusable salad leaves may turn bitter and root crops fail to swell. Adverse weather or changes in day length can cause bolting in a wide range of vegetables, including lettuces, onions , carrots and otheer root crops bolting) prematurely. However, take care not to overwater, as this can dilute the taste. Weed between the plants regularly. Its best to give rocket some shade in hot weather, to prevent the leaves becoming tough and unpalatable. Cover with fleece or make summer sowings in a spot that gets some light shade.",
            ),
          ],
        )),
    Plant(
      plantId: 3,
      plantName: 'Rocket',
      plantImage:
          'https://www.rhs.org.uk/getmedia/ada7442e-1241-4dfb-a912-67fe5861b9cd/Salad-rocket940x627.jpg?width=940&height=627&ext=.jpg',
      plantInfo: PlantInfo(
        description:
            "Rocket is an easy-to-grow crop that adds a lovely peppery flavour to salads. The younger leaves are milder, more tender and delicately flavoured. Older leaves can also be lightly cooked as a spinach substitute, added to sauces, stir-fried or sauted in olive oil. The flowers are edible too. Rocket is rich in potassium and vitamin C and flourishes in a warm, sunny position.",
        name: "Rocket",
        picture:
            "https://www.rhs.org.uk/getmedia/ada7442e-1241-4dfb-a912-67fe5861b9cd/Salad-rocket940x627.jpg?width=940&height=627&ext=.jpg",
        cycle: [
          PlantCycle(
            month: "January",
            todo: "",
          ),
          PlantCycle(
            month: "February",
            todo: "",
          ),
          PlantCycle(
            month: "MArch",
            todo: "Plant",
          ),
          PlantCycle(
            month: "April",
            todo: "Harvest",
          ),
          PlantCycle(
            month: "May",
            todo: "Harvest",
          ),
          PlantCycle(
            month: "June",
            todo: "Harvest",
          ),
          PlantCycle(
            month: "July",
            todo: "",
          ),
          PlantCycle(
            month: "August",
            todo: "",
          ),
          PlantCycle(
            month: "September",
            todo: "",
          ),
          PlantCycle(
            month: "October",
            todo: "",
          ),
          PlantCycle(
            month: "November",
            todo: "",
          ),
          PlantCycle(
            month: "December",
            todo: "",
          ),
        ],
        details: [
          Details(
            title: "Sow",
            details:
                "Keep the soil moist, watering in dry spells, to ensure consistent growth and prevent plants running to seed (When a vegetable plant starts flowering and forming seeds, often prematurely, making the crop unusable salad leaves may turn bitter and root crops fail to swell. Adverse weather or changes in day length can cause bolting in a wide range of vegetables, including lettuces, onions , carrots and otheer root crops bolting) prematurely. However, take care not to overwater, as this can dilute the taste. Weed between the plants regularly. Its best to give rocket some shade in hot weather, to prevent the leaves becoming tough and unpalatable. Cover with fleece or make summer sowings in a spot that gets some light shade.",
          ),
          Details(
            title: "Grow",
            details:
                "Keep the soil moist, watering in dry spells, to ensure consistent growth and prevent plants running to seed (When a vegetable plant starts flowering and forming seeds, often prematurely, making the crop unusable salad leaves may turn bitter and root crops fail to swell. Adverse weather or changes in day length can cause bolting in a wide range of vegetables, including lettuces, onions , carrots and otheer root crops bolting) prematurely. However, take care not to overwater, as this can dilute the taste. Weed between the plants regularly. Its best to give rocket some shade in hot weather, to prevent the leaves becoming tough and unpalatable. Cover with fleece or make summer sowings in a spot that gets some light shade.",
          ),
          Details(
            title: "Harvest",
            details:
                "Keep the soil moist, watering in dry spells, to ensure consistent growth and prevent plants running to seed (When a vegetable plant starts flowering and forming seeds, often prematurely, making the crop unusable salad leaves may turn bitter and root crops fail to swell. Adverse weather or changes in day length can cause bolting in a wide range of vegetables, including lettuces, onions , carrots and otheer root crops bolting) prematurely. However, take care not to overwater, as this can dilute the taste. Weed between the plants regularly. Its best to give rocket some shade in hot weather, to prevent the leaves becoming tough and unpalatable. Cover with fleece or make summer sowings in a spot that gets some light shade.",
          ),
        ],
      ),
    ),
  ];
}

class PlantInfo {
  PlantInfo({
    this.description,
    this.details,
    this.name,
    this.picture,
    this.cycle,
  });

  String? description;
  List<Details>? details;
  String? name;
  String? picture;
  List<PlantCycle>? cycle;

  static PlantInfo plants = PlantInfo(
    description:
        "Rocket is an easy-to-grow crop that adds a lovely peppery flavour to salads. The younger leaves are milder, more tender and delicately flavoured. Older leaves can also be lightly cooked as a spinach substitute, added to sauces, stir-fried or sauted in olive oil. The flowers are edible too. Rocket is rich in potassium and vitamin C and flourishes in a warm, sunny position.",
    details: [
      Details(
        title: "Grow",
        details:
            "Keep the soil moist, watering in dry spells, to ensure consistent growth and prevent plants running to seed (When a vegetable plant starts flowering and forming seeds, often prematurely, making the crop unusable salad leaves may turn bitter and root crops fail to swell. Adverse weather or changes in day length can cause bolting in a wide range of vegetables, including lettuces, onions , carrots and otheer root crops bolting) prematurely. However, take care not to overwater, as this can dilute the taste. Weed between the plants regularly. Its best to give rocket some shade in hot weather, to prevent the leaves becoming tough and unpalatable. Cover with fleece or make summer sowings in a spot that gets some light shade.",
      ),
    ],
    name: "Rocket",
    picture:
        "https://www.rhs.org.uk/getmedia/ada7442e-1241-4dfb-a912-67fe5861b9cd/Salad-rocket940x627.jpg?width=940&height=627&ext=.jpg",
    cycle: [
      PlantCycle(
        month: "January",
        todo: "",
      ),
      PlantCycle(
        month: "February",
        todo: "",
      ),
      PlantCycle(
        month: "MArch",
        todo: "Plant",
      ),
      PlantCycle(
        month: "April",
        todo: "Harvest",
      ),
      PlantCycle(
        month: "May",
        todo: "Harvest",
      ),
      PlantCycle(
        month: "June",
        todo: "Harvest",
      ),
      PlantCycle(
        month: "July",
        todo: "",
      ),
      PlantCycle(
        month: "August",
        todo: "",
      ),
      PlantCycle(
        month: "September",
        todo: "",
      ),
      PlantCycle(
        month: "October",
        todo: "",
      ),
      PlantCycle(
        month: "November",
        todo: "",
      ),
      PlantCycle(
        month: "December",
        todo: "",
      ),
    ],
  );
}

class PlantCycle {
  PlantCycle({
    this.month,
    this.todo,
  });

  String? month;
  String? todo;
}

class Details {
  Details({
    this.title,
    this.details,
  });

  String? title;
  String? details;
}
