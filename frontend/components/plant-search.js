
export default function PlantSearch() {
  return (
   <div className='d-flex justify-content-center'>
     <div className="input-group my-5 w-md-75 search-bar">
      <input type="text" className="form-control rounded-0" placeholder="Search Plants..." aria-label="Search Planet" aria-describedby="serach_plants" />
      <button className="btn rounded-0 px-4" type="button" id="search_plant_btn">Search</button>
    </div>
   </div>
  )
}