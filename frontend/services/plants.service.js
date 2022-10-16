export class Plants {

    topPick = [];
    topCategories = [];
    pages = [];

    getTopPicks() {
        return new Promise(resolve =>
            setTimeout(() => {
                this.topPick = [{ "id": 1, "name": "Rocket", "picture": "https://www.rhs.org.uk/getmedia/ada7442e-1241-4dfb-a912-67fe5861b9cd/Salad-rocket940x627.jpg?width=940&height=627&ext=.jpg" }, {"id":1,"name":"Cabbage","picture":"https://www.rhs.org.uk/getmedia/3c00ea55-b6e8-4404-89f9-600e5238b273/cabbage_mar0005357.jpg?width=940&height=627&ext=.jpg"},{"id":2,"name":"Broccoli","picture":"https://www.rhs.org.uk/getmedia/2c926328-af40-46a0-867a-b4a7d112502f/chinese-broccoli940x627.jpg?width=940&height=627&ext=.jpg"},{"id":3,"name":"Spring onion","picture":"https://www.rhs.org.uk/getmedia/08cf080f-5a71-4ece-9425-4c0f2062d61c/allium-porrum-bandit-_wsyd0005331.jpg?width=940&height=627&ext=.jpg"},{"id":4,"name":"Broccoli","picture":"https://www.rhs.org.uk/getmedia/2c926328-af40-46a0-867a-b4a7d112502f/chinese-broccoli940x627.jpg?width=940&height=627&ext=.jpg"},{"id":5,"name":"Spring onion","picture":"https://www.rhs.org.uk/getmedia/08cf080f-5a71-4ece-9425-4c0f2062d61c/allium-porrum-bandit-_wsyd0005331.jpg?width=940&height=627&ext=.jpg"},{"id":6,"name":"Cabbage","picture":"https://www.rhs.org.uk/getmedia/3c00ea55-b6e8-4404-89f9-600e5238b273/cabbage_mar0005357.jpg?width=940&height=627&ext=.jpg"}]
                // this.topPick = [{ "id": 1, "name": "Rocket", "picture": "https://www.rhs.org.uk/getmedia/ada7442e-1241-4dfb-a912-67fe5861b9cd/Salad-rocket940x627.jpg?width=940&height=627&ext=.jpg" }, { "id": 2, "name": "Rocket", "picture": "https://www.rhs.org.uk/getmedia/ada7442e-1241-4dfb-a912-67fe5861b9cd/Salad-rocket940x627.jpg?width=940&height=627&ext=.jpg" }, { "id": 3, "name": "Rocket", "picture": "https://www.rhs.org.uk/getmedia/ada7442e-1241-4dfb-a912-67fe5861b9cd/Salad-rocket940x627.jpg?width=940&height=627&ext=.jpg" }]
                resolve(this.topPick);
            }, 1000)
        )
    }

    getTopCategories() {
        return new Promise(resolve =>
            setTimeout(() => {
                this.topCategories = [{ "id": 1, "name": "Rocket", "picture": "https://www.rhs.org.uk/getmedia/ada7442e-1241-4dfb-a912-67fe5861b9cd/Salad-rocket940x627.jpg?width=940&height=627&ext=.jpg" }, { "id": 2, "name": "Rocket", "picture": "https://www.rhs.org.uk/getmedia/ada7442e-1241-4dfb-a912-67fe5861b9cd/Salad-rocket940x627.jpg?width=940&height=627&ext=.jpg" }, { "id": 3, "name": "Rocket", "picture": "https://www.rhs.org.uk/getmedia/ada7442e-1241-4dfb-a912-67fe5861b9cd/Salad-rocket940x627.jpg?width=940&height=627&ext=.jpg" }]
                resolve(this.topCategories);
            }, 1000)
        )
    }

    getPlantsPages() {
        return new Promise(resolve =>
            setTimeout(() => {
                this.pages = [
                    { "description": "Rocket is an easy-to-grow crop that adds a lovely peppery flavour to salads. The younger leaves are milder, more tender and delicately flavoured. Older leaves can also be lightly cooked as a spinach substitute, added to sauces, stir-fried or saut\u00e9ed in olive oil. The flowers are edible too. Rocket is rich in potassium and vitamin C and flourishes in a warm, sunny position.", "grow": "Keep the soil moist, watering in dry spells, to ensure consistent growth and prevent plants running to seed (\n\n    When a vegetable plant starts flowering and forming seeds, often prematurely, making the crop unusable \u2013 salad leaves may turn bitter and root crops fail to swell. Adverse weather or changes in day length can cause bolting in a wide range of vegetables, including lettuces, onions , carrots and otheer root crops.\n    \n    bolting) prematurely. However, take care not to overwater, as this can dilute the taste. \n    \n    Weed between the plants regularly.\n    \n    It\u2019s best to give rocket some shade in hot weather, to prevent the leaves becoming tough and unpalatable. Cover with fleece or make summer sowings in a spot that gets some light shade.", "harvest": "Rocket can provide pickings from early summer through autumn and into winter, if repeat sowings are made.\n\n    You can start harvesting the leaves from about four weeks after sowing. Regular picking keeps growth young, tender and tasty.\n    \n    Pick a few leaves from each plant along the row. If you take lots of leaves from just one plant, you\u2019ll weaken the growth.\n    \n    As flower buds appear, pinch them out to prolong cropping, unless you want the plant to produce seeds. The flowers are edible and can be used as a garnish for salads.", "name": "Rocket", "picture": "https://www.rhs.org.uk/getmedia/ada7442e-1241-4dfb-a912-67fe5861b9cd/Salad-rocket940x627.jpg?width=940&height=627&ext=.jpg", "sow": "Rocket likes in a sunny site with rich, fertile, well-drained soil. It also grows well in containers.\n\n    Sow direct outdoors from April to early September, scattering the seeds thinly along a drill, 0.5\u20131cm (\u00bc\u2013\u00bdin) deep. If sowing several rows, space them 15cm (6in) apart.\n    \n    For a continuous supply of leaves, sow small batches every two to three weeks.\n    \n    Thin out the \n    \n    A seedling is a young plant grown from seed.\n    \n    seedlings to 15cm (6in) apart when they\u2019re large enough to handle, and use the thinnings in salads.\n    \n    If you allow some plants to flower and produce seeds, they\u2019ll self-sow to give you new plants without any effort.\n    \n    For autumn and winter crops, sow in August and September in a cool greenhouse or under cloches or fleece." }
                ]
                resolve(this.pages);
            }, 1000)
        )
    }

}
