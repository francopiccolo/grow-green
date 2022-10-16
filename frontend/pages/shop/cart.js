import HeaderDisscount from "../../components/header-disscount";
import AppLayout from "../../components/layouts/AppLayout";
import cart from "../../services/cart.service";
import { useState, useEffect } from 'react';
import CartProductItem from "../../components/cart-product";


export default function Shop() {

  const [coupon, setCoupon] = useState('')
  const [Cart, setCart] = useState()

  const applyDisscount = () => {
    cart.applyDisscount(coupon);
    setCoupon('');
  }

  useEffect(() => {
    if (!Cart) {
      cart.loadCart().then(cart_response => setCart(cart_response));
      console.log(cart);
    }
  }, Cart)

  return (
    <AppLayout>
      <HeaderDisscount
        header={true}
        title={'Do you know?'}
        description={'Most people prefer to leave a typical pitchfork as the hay mover in the barn.'}
        background_img="//iili.io/Zy61Vt.png"
        href=""
        hasButton={false}
      />
      <div className='container py-5'>
        <div className='card rounded-0' >
          <div className='row'>
            <div className='col-md-3 order-md-last p-3 py-5 bg-green text-white'>
              <h4>Summary</h4>
              < hr />

              <div className=" mb-5 rounded-0">
                <div className="">
                  <div className="spaced-between">
                    <dt>Total Items:</dt>
                    <dd className="text-right">{cart.products?.length}</dd>
                  </div>
                  <div className="spaced-between">
                    <dt>Total price:</dt>
                    <dd className="text-right">U$D {cart.getTotal()}</dd>
                  </div>
                  <div className="spaced-between">
                    <dt>Discount:</dt>
                    <dd className="text-right">U$D {cart.getDisscount()}</dd>
                  </div>
                  <div className="spaced-between">
                    <dt>Total:</dt>
                    <dd className="text-right h5"><strong>U$D {cart.getTotalWithDisscounts()}</strong></dd>
                  </div>
                </div>
              </div>

              <div className="form-group">
                <label>Have coupon?</label>
                <div className="input-group">
                  <input onChange={(ev) => setCoupon(ev.target.value)} type="text" className="form-control rounded-0" name="" placeholder="Coupon code" />
                  <span className="input-group-append">
                    <button onClick={() => applyDisscount()} className="btn btn-dark rounded-0">Apply</button>
                  </span>
                </div>
              </div>

              <div className="d-grid gap-2 pt-5">
                <a href="/success" onClick={() => cart.deleteCart()} className="btn btn-dark rounded-0"> Make Purchase <i className="fa fa-chevron-right"></i> </a>
              </div>
            </div>

            <div className='col-md-9 order-md-first p-5'>
              <h4>Shopping Cart</h4>
              < hr />
              <div className="row">
                <div className="col-6">Product</div>
                <div className="col-2">Quantity</div>
                <div className="col-2">Price</div>
                <div className="col-2 text-right"></div>
              </div>
              < hr className="mb-0" />

              {
                cart.products.map(product => <CartProductItem cart={cart} setCart={setCart} product={product}/>)
              }

              {cart.products.length <= 0 && <h3 className="text-center mt-5">The cart is empty</h3>}

            </div>
          </div>
        </div>
      </div>
    </AppLayout>
  )
}