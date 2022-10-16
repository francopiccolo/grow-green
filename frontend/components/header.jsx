import cart from '../services/cart.service';
import React from 'react';

export default function Header() {
  return (
    <div className='bg-green '>
      <nav className="navbar navbar-expand-lg container text-white">
        <div className="container-fluid">
          <a className="navbar-brand" href="/">
            <h2 className='text-light'>Grow Green</h2>
          </a>
          <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarDrop" aria-controls="navbarDrop" aria-expanded="false" aria-label="Toggle">
            <span className="navbar-toggler-icon"></span>
          </button>
          <div className="d-flex gap-3 gap-md-5 flex-column flex-md-row align-items-center flex-wrap">
            <a className='navbar-item text-light' href="/">Home</a>
            <a className='navbar-item text-light' href="/plant">Discover Plants</a>
            <a className='navbar-item text-light' href="/shop">Shop Resources</a>
            <a className="btn btn-outline-light position-relative" href='/shop/cart'>
              <i className="bi bi-basket"></i>
            </a>
          </div>
        </div>
      </nav>
    </div>
  )
}