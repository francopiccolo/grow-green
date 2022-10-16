const PlantList = ({ title, plants }) => (
  <div className='container-fluid d-flex flex-column align-items-center mt-5'>
    <h2 className=' mb-3'>
      <strong>{title}</strong>
    </h2>

    <div className="d-flex gap-4 container justify-content-center plants-container user-select-none mb-5">
        
      {!plants?.length > 0 && <div className="spinner-grow spinner mt-2" role="status"></div>}
      {!plants?.length > 0 && <div className="spinner-grow spinner mt-2" role="status"></div>}
      {!plants?.length > 0 && <div className="spinner-grow spinner mt-2" role="status"></div>}

      {
        plants?.map((plant, key) => (
          <div key={key} onClick={() => location.href = `/plant/${plant.id}`} className="d-flex flex-column align-items-center plant-item">
            <img className="w-100" src={plant.picture} />
            <spann className="plant-item-name">
              {plant.name}
            </spann>
            {
              plant.description && <p className="text-center">
                {plant.description}
              </p>
            }
            {
              plant?.categories?.map(categorie => <a>{categorie.name}</a>)
            }

          </div>
        ))
      }
    </div>
  </div>
)

export default PlantList;