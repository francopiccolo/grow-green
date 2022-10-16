const CartProductItem = ({ product, cart, setCart }) => {

    const changeQuantity = (value) => {
        console.log("🚀 ~ file: cart-product.jsx ~ line 4 ~ changeQuantity ~ value", value)

        const newCart = { ...cart };
        const index = newCart.products.findIndex(product_stored => product_stored.id == product.id);
        newCart.products[index] = { ...product, cant: value };
        setCart(newCart);
    }

    const deleteProduct = () => {
        cart.deleteProduct(product);
        setCart({ ...cart })
    }

    return (
        <div className="row bg-light m-0 p-2 ps-0">
            <div className="col-6">
                <div className="d-flex gap-3 align-items-center justify-content-center">
                    <img src={product.picture} width={100} height={100} />
                    <div>
                        <h5>{product.name}</h5>
                    </div>
                </div>
            </div>
            <div className="col-2 d-flex gap-3 align-items-center justify-content-center">
                <input type='number' value={product.cant} onChange={(ev) => changeQuantity(ev.target.value)} className="form-control" />
            </div>
            <div className="col-2 d-flex gap-3 align-items-center justify-content-center">
                {(product.price * product.cant).toFixed(2)}
            </div>
            <div className="col-2 d-flex gap-3 align-items-center justify-content-center">
                <button className="btn btn-outline-danger" onClick={deleteProduct} ><i className="bi bi-trash"></i></button>
            </div>
        </div>
    )
}

export default CartProductItem;