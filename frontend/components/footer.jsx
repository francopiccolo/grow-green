
export default function Footer() {
  return (
    <div className="bg-green mt-5">
      <div className="container d-flex flex-column align-items-center text-center text-white py-5">

        <div className="w-md-50">
          <h4>Subscribe</h4>
          <p>Get connected to our insights</p>
          <div className="input-group">
               <input type="text" className="form-control" name="email" placeholder="Enter your email" />
               <span className="input-group-btn">
                    <button className="btn btn-outline-light px-4" type="button">Subscribe</button>
               </span>
            </div>
        </div>

        <hr className="w-100 my-5"/>
        <h3 >Grow Green</h3>
      </div>
    </div>
  )
}