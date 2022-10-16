import Image from "next/image";
import AppLayout from "../../components/layouts/AppLayout";
import { A11y, Navigation } from "swiper";
import { Swiper, SwiperSlide } from "swiper/react";
import { breakpoints_four } from "../../utils/consts";

export default function Shop() {

  const product = {
    "brand": "Grow Green", 
    "description": "The leaves of this rocket have a distinct wasabi-like flavour, so they will add another layer to your salads. Just as easy to grow as the more commonly grown rocket, it can be treated as a cut and come again crop, so will offer months of delicious leaves.", 
    "discounted_price": 4.0, 
    "name": "Wasabi Rocket", 
    "picture": "https://img.crocdn.co.uk/images/products2/pl/20/00/02/39/pl2000023947.jpg?width=940&height=940", 
    "price": 5.0, 
    "sku": "ABCLALALA"
  }

  const sampletobuy = [
    {
      'name': 'Seed Bud',
      'img': '/images/seedbud.jpeg'
    },
    {
      'name': 'Watering Can',
      'img': '/images/wateringcan.jpeg'
    },
    {
      'name': 'Nursery Seed',
      'img': '/images/nursery.jpg'
    },
    {
      'name': 'Plant Pot',
      'img': '/images/wateringcan.jpeg'
    },
    {
      'name': 'Nusery Seed Bed',
      'img': '/images/seedbud.jpeg'
    },
    {
      'name': 'Garden Fork',
      'img': '/images/wateringcan.jpeg'
    },
  ]

  return (
    <AppLayout>
      <div className='container py-5'>
        <div className='row py-5'>
          <div className="col-md-6 d-flex align-items-center justify-content-end">
            <div className="d-flex align-items-center justify-content-end h-100 hang-right">
              <Image src={product['picture']} width={500} height={500} />
            </div>
          </div>
          <div className="col-md-6 bg-green p-5">
            <div className="p-md-5 text-white">
              <p className='pb-0 m-0' > <small>SKU: {product['sku']} </small> </p>
              <h3 className='pt-1'> {product['name']} </h3>
              <div className='boxed my-4 mb-5'>
                <h5 className='p-0 m-0'>USD {product['price']} </h5>
              </div>
              <p className='pb-3'> {product['description']} </p>
              <button className='btn btn-lg btn-dark px-5'>Add to Cart</button>
            </div>
          </div>
        </div>

        <p>Similar Items</p>
        <hr />
          <Swiper
            modules={[Navigation, A11y]}
            navigation breakpoints={breakpoints_four}
            loop={true} centeredSlides={true}
            autoplay={{
              delay: 2000,
              disableOnInteraction: false,
            }} >
            {sampletobuy.map((s, i) => {
              return (
                <SwiperSlide key={i}>
                  <div className="card_in_slide" style={{
                    // TODO: There is Hydration Error Here
                    'backgroundImage' : `url(${s['img']})`
                  }}>
                  </div>
                </SwiperSlide>
              )
            })}
          </Swiper>
      </div>
    </AppLayout>
  )
}