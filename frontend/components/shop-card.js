import cart from "../services/cart.service";

export const ShopCard = ({ product }) => {

  return (
    <div className="box">
      <div className="imgBx">
        <img src={product?.picture} alt="imagecover" />
      </div>
      <div className="text px-3 pt-3">
        <h5>{product?.name}</h5>
        <div className="end-div">
          <p className="price-tag text-secondary">U$D {product.price}</p>
          <p className="buynow primary-button" onClick={() => cart.addProduct({...product, cant: 1})}>Add to cart</p>
        </div>
      </div>
    </div>
  )
}