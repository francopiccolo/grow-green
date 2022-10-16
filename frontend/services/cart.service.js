const coupon70 = {
    code: 'GROWGREEN70',
    disscount: 70
}

class Cart {
    products = [];
    disscount = 0;

    async loadCart() {
        return new Promise(resolve => {
            const cart = JSON.parse(localStorage.getItem('cart'));
            if (cart) {
                for (let key in cart) {
                    this[key] = cart[key];
                }
            }
            resolve(this);
        })
    }

    saveCart() {
        localStorage.setItem('cart', JSON.stringify(this));
    }

    deleteCart() {
        localStorage.removeItem('cart');
        this.products = []
        this.disscount = 0
    }

    addProduct(product) {
        const savedProductIndex = this.products.findIndex(product_stored => product_stored.id == product.id);
        if (savedProductIndex >= 0) {
            this.products[savedProductIndex] = { ...this.products[savedProductIndex], cant: this.products[savedProductIndex].cant + product.cant }
        } else {
            this.products.push(product);
        }
        this.saveCart();
    }

    applyDisscount(code) {
        if (code == coupon70.code) this.disscount = coupon70.disscount;
    }

    getDisscount() {
        return (this.getTotal() * this.disscount / 100).toFixed(2);
    }

    getTotal() {
        return this.products.reduce((sum, product) => sum + product.price * product.cant, 0).toFixed(2);
    }

    getTotalWithDisscounts() {
        return (this.getTotal() - this.getDisscount()).toFixed(2);
    }

    deleteProduct(product) {
        this.products = this.products.filter(prod => prod.id != product.id);
        this.saveCart()
    }

}

const cart = new Cart();
export default cart;