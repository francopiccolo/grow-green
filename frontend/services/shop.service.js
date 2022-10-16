export class ShopService {

    products = [];
    topSellers = [];

    getTopSellers() {
        return new Promise(resolve =>
            setTimeout(() => {
                this.topSellers = [
                    {
                        "discounted_price": 0,
                        "id": 1,
                        "name": "Wasabi Rocket",
                        "picture": "https://img.crocdn.co.uk/images/products2/pl/20/00/02/39/pl2000023947.jpg?width=940&height=940",
                        "price": 5.0
                    },
                    {
                        "discounted_price": 2.0,
                        "id": 2,
                        "name": "Pot",
                        "picture": "https://img.crocdn.co.uk/images/products2/pr/20/00/04/45/pr2000044527.jpg?width=940&height=940",
                        "price": 10.0
                    },
                    {
                        "discounted_price": 1.0,
                        "id": 3,
                        "name": "Gloves",
                        "picture": "https://img.crocdn.co.uk/images/products2/pr/20/00/00/68/pr2000006848.jpg?width=940&height=940",
                        "price": 8.0
                    }
                ]
                resolve(this.topSellers);
            }, 1000)
        )
    }

    getProducts() {
        return new Promise(resolve =>
            setTimeout(() => {
                // this.products = fetch('http://localhost:8000/product', { mode: 'no-cors'}).then((res) => res.json());
                this.products = [
                    {
                        "discounted_price": 0,
                        "id": 1,
                        "name": "Wasabi Rocket",
                        "picture": "https://img.crocdn.co.uk/images/products2/pl/20/00/02/39/pl2000023947.jpg?width=940&height=940",
                        "price": 5.0
                    },
                    {
                        "discounted_price": 1.0,
                        "id": 2,
                        "name": "Pot",
                        "picture": "https://img.crocdn.co.uk/images/products2/pr/20/00/04/45/pr2000044527.jpg?width=940&height=940",
                        "price": 10.0
                    },
                    {
                        "discounted_price": 1.0,
                        "id": 3,
                        "name": "Gloves",
                        "picture": "https://img.crocdn.co.uk/images/products2/pr/20/00/00/68/pr2000006848.jpg?width=940&height=940",
                        "price": 8.0
                    }
                ]
                resolve(this.products);
            }, 1000)
        )
    }


}