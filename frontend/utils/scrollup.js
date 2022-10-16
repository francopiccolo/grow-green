
if (typeof window !== 'undefined') {
  try {
    let upbtn = document.getElementById("back-to-top");
    
    window.onscroll = ()=>{
      ( document.body.scrollTop > 20 ||
        document.documentElement.scrollTop > 20
      ) ? upbtn.style.display = "block" : upbtn.style.display = "none"
    };
    
    upbtn.addEventListener("click", ()=>{
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
    });
  } catch (error) {}
}
