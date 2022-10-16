
export default function PlantCard({ plant, key }) {
  return (
    <div className="card rounded-0 text-center" key={key} onClick={() => location.href = `plant/${plant.id}`} >
      <img src={plant.picture} className="card-img-top" alt={plant.name} />
      <div className="card-body">
        <h5 className="card-title">{plant.name}</h5>
        <p>{plant.description}</p>
      </div>
    </div>
  )
}