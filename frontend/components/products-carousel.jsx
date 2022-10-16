import { Pagination, Scrollbar } from 'swiper';
import { Swiper, SwiperSlide } from 'swiper/react';
import { breakpoints_four } from '../utils/consts';

const ProductsCarousel = ({ title, products }) => {

    const calculatePorcent = (number, second_number) => {
        return (second_number * 100 / 5).toFixed(0);
    }

    return (
        <div className='container my-5'>
            <h1 className='text-center'>{title}</h1>

            {
                !products?.length > 0 && <div className='d-flex justify-content-center mb-5'>
                    <div className="spinner-grow spinner mt-2" role="status"></div>
                    <div className="spinner-grow spinner mt-2" role="status"></div>
                    <div className="spinner-grow spinner mt-2" role="status"></div>

                </div>
            }


            <Swiper
                slidesPerView={6}
                spaceBetween={30}
                pagination={{
                    clickable: true
                }}
                breakpoints={breakpoints_four}
                scrollbar={{ draggable: true }}
                modules={[Pagination, Scrollbar]}
                className="mySwiper"
            >

                {products?.map((product, index) => (
                    <SwiperSlide key={index}>
                        <a href={`product/${product.id}`}>
                            <div className="card ml-5" style={{ 'width': '20rem !important', 'position': 'relative', "cursor": 'pointer' }}>
                                {product.discounted_price > 0 &&
                                    <div className='disscount-tag'>
                                        <h5>{calculatePorcent(product.price, product.discounted_price)}% OFF</h5>
                                    </div>
                                }
                                <img src={product.picture} className="card-img-top" alt={product.name} />
                                <div className="card-body">
                                    <h5 className="card-title">{product.name}</h5>
                                    <div className='d-flex justify-content-between'>

                                        {product.discounted_price > 0 && <p className='primary-color'>U$D {product.discounted_price}</p>}
                                        {product.discounted_price <= 0 && <p className='text-secondary'>U$D {product.price}</p>}

                                        <a href={`product/${product.id}`}>
                                            <button className="primary-button" style={{
                                                paddingLeft: '1em',
                                                paddingRight: '1em',
                                                paddingTop: '0',
                                                paddingBottom: '0'

                                            }}>Buy</button>
                                        </a>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </SwiperSlide>
                ))}

            </Swiper>

        </div >

    )
}

export default ProductsCarousel;