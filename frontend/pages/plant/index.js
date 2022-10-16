import { useEffect, useState } from 'react';
import HeaderDisscount from "../../components/header-disscount";
import AppLayout from "../../components/layouts/AppLayout";
import PlantCard from "../../components/plant-card";
import PlantList from '../../components/plant-list';
import PlantSearch from "../../components/plant-search";
import { Plants } from "../../services/plants.service";

export default function PlantsPage() {

  const [plants, setPlants] = useState()

  useEffect(() => {
    const loadPlants = async (plant_service) => {
      await plant_service.getTopPicks();
      setPlants(plant_service);
    }
    if (!plants) {
      const newPlants = new Plants();
      loadPlants(newPlants);
    }
  }, [plants])

  return (

    <AppLayout>
      <HeaderDisscount
        header={true}
        title={'Do you know?'}
        description={'There are over 20,000 species of edible plants in the world yet fewer than 20 species now provide 90% of our food'}
        background_img="//iili.io/Zy61Vt.png"
        href=""
        hasButton={false}
      />
      <div className='container'>
        <div className="row mt-5">
          {plants?.topPick?.map(plant => {
            return (
              <div className='col-md-3 pb-4' >
                <PlantCard plant={plant} />
              </div>
            )
          })}
        </div>
        <div className='py-5'>
          <h4>Plants to start easy</h4>
          <hr />
          <PlantList plants={plants?.topPick}/>
        </div>
      </div>
    </AppLayout>
  )
}