import HeaderDisscount from "../../components/header-disscount";
import AppLayout from "../../components/layouts/AppLayout";
import { ShopCard } from "../../components/shop-card";
import { useState, useEffect } from 'react'
import { ShopService } from "../../services/shop.service";

export default function Shop() {

  const [store, setStore] = useState(null)

  useEffect(() => {
    const loadStore = async (shop) => {
      await shop.getProducts();
      setStore(shop);
    };

    if (!store) {
      const newStore = new ShopService();
      loadStore(newStore);
    }

  }, [store])

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
      <div className='container'>
        <div className="content d-flex justify-content-center flex-wrap">
          {
            store?.products.map(product => <ShopCard product={product} />)
          }

          {!store?.products?.length > 0 &&
            <div className="mt-5">
              <div className="spinner-grow spinner mt-2" role="status"></div>
              <div className="spinner-grow spinner mt-2" role="status"></div>
              <div className="spinner-grow spinner mt-2" role="status"></div>
            </div>
          }
        </div>
      </div>
    </AppLayout>
  )
}