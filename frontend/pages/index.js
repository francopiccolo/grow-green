import { useEffect, useState } from 'react';
import HeaderDisscount from '../components/header-disscount'
import AppLayout from '../components/layouts/AppLayout'
import PlantList from '../components/plant-list'
import ProductsCarousel from '../components/products-carousel';
import { Plants } from '../services/plants.service';
import { ShopService } from '../services/shop.service';


export default function Home() {

  const [plants, setPlants] = useState(null);
  const [shop, setShop] = useState(null);

  useEffect(() => {

    const loadShop = async (shop_instance) => {
      await shop_instance.getTopSellers();
      setShop(shop_instance);
    }

    const loadPlants = async (plant) => { 
      await plant.getTopPicks();
      await plant.getTopCategories(); 
      setPlants(plant) 
    };

    if (!plants) {
      let local_plants = new Plants();
      let local_shop = new ShopService();
      loadPlants(local_plants);
      loadShop(local_shop)
    }

  }, [plants])


  return (
    <AppLayout>
      <HeaderDisscount
        header={true}
        title={'Start growing your own garden today!'}
        description={'It’s one of the best times of the year to plant, so stock up and enjoy terrific savings. Up to 40% off!'}
        // background_img="//img.crocdn.co.uk/images/affiliates/image-archive/autumn-plant-sale/autumn-plant-sale_2000x380v2.jpg"
        background_img="//iili.io/Zy61Vt.png"
        href="shop"
      />
      <PlantList title="Top picks this week" plants={plants?.topPick} />
      <HeaderDisscount

        title={'Get your starting pack!'}
        description={'We chose all the essential tools you need to start growing your own vegetables'}
        background_img="//iili.io/ZyLJmx.png"
        href="shop"
      />
      <ProductsCarousel title={"This month's top sellers"} products={shop?.topSellers}></ProductsCarousel>

    </AppLayout>
  )
}
