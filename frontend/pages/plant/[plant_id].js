import { useRouter } from 'next/router';
import { useEffect, useState } from 'react';
import { A11y, Navigation } from 'swiper';
import { Swiper, SwiperSlide } from "swiper/react";
import AppLayout from '../../components/layouts/AppLayout';
import PlantList from '../../components/plant-list';
import ProductsCarousel from '../../components/products-carousel';
import { Plants } from '../../services/plants.service';
import { ShopService } from '../../services/shop.service';
import { breakpoints_four, breakpoints_three } from '../../utils/consts';

export default function SinglePlant() {

  const router = useRouter();
  const [data, setData] = useState()

  useEffect(() => {

    const loadPlantsAndProducts = async (plants_reference, store) => {
      await store.getProducts();
      await store.getTopSellers();
      await plants_reference.getPlantsPages();
      await plants_reference.getTopPicks();
      const { plant_id } = router.query;
      setData({
        shop: store,
        plant: plants_reference.pages.find(prod => prod.id == plant_id),
        plants: plants_reference
      })
    }

    if (!data) {
      const newStore = new ShopService();
      const newPlants = new Plants();
      loadPlantsAndProducts(newPlants, newStore);
    }
  }, [data])

  const menus = [
    'sow',
    'grow',
    'harvest',
  ]

  return (
    <AppLayout>
      {!data && <div className="d-flex justify-content-center mt-5">
        <div className="spinner-grow spinner mt-2" role="status"></div>
        <div className="spinner-grow spinner mt-2" role="status"></div>
        <div className="spinner-grow spinner mt-2" role="status"></div>
      </div>
      }
      {data &&
        <div className='container'>
          <div className='row py-5'>
            <div className='col-md-6 order-md-last'>
              <img className='plant-img'
                src={data?.plant?.picture}
                width={500} height={350} alt='Plant Image' />
            </div>
            <div className='col-md-6 order-md-first d-md-flex flex-md-column justify-content-center'>
              <h2 className='py-3'>{data?.plant?.name}</h2>
              <p className='pe-md-4' dangerouslySetInnerHTML={{ __html: data?.plant?.description }}></p>
            </div>
          </div>
          <div className='row py-5'>
            <div className='col-md-2'>
              <nav className="flex-column align-items-stretch pe-4 border-end">
                <nav className="d-flex flex-md-column gap-2" >
                  {
                    menus?.map(menu => { return (<a className=" text-capitalize" key={menu} href={'#' + menu}>{menu}</a>) })
                  }
                </nav>
              </nav>
            </div>
            <div className='col-md-9'>
              <div data-bs-spy="scroll" data-bs-smooth-scroll="true" tabindex="0">
                {menus.map(menu => {
                  return (
                    <>
                      <div id={menu} className='pb-4'></div>
                      <h5 className='text-capitalize'>{menu}</h5>
                      <p dangerouslySetInnerHTML={{ __html: data?.plant?.[menu] }}></p>
                      <div className='pb-2'>
                        <h6>Items to buy</h6>
                        <hr />
                        <ProductsCarousel title={""} products={data?.shop?.topSellers}></ProductsCarousel>
                      </div>
                    </>
                  )
                })}
              </div>
            </div>
          </div>
          <div className='py-5'>
            <h4>Related Plants</h4>
            <hr />
            <PlantList plants={data?.plants?.topPick} />

          </div>
        </div>
      }
    </AppLayout>
  )
}
