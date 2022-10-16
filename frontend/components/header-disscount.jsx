const HeaderDisscount = ({ header = false, background_img, title, description, href, hasButton = true }) => {
  let parsed_title = title.split('\n');

  return <div className={`d-flex ${!header ? ' px-3 container' : ''}`}>
    <div style={{ 'backgroundImage': `url(${background_img})` }} className='header-disscounts'>
      <div className="header-disscounts-content">

        <a href={href}>
          <div className='disscount-advice'>
            <div className='disscount-advice-header'>
              {
                parsed_title.map(title_line => {
                  if (header) return <h1 className="disscount-advice-title">{title_line}</h1>
                  return <h2 className="disscount-advice-title">{title_line}</h2>
                })
              }
            </div>
            <div className='disscount-advice-content'>
              <p>{description}</p>
            </div>
            {
              hasButton ? 
              <div className='disscount-advice-footer'>
                <button className={`primary-button ${header ? '' : 'active'}`}>
                  Shop now
                </button>
              </div> : ''
            }
          </div>
        </a>
      </div>
    </div>
  </div>
}

export default HeaderDisscount;