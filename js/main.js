window.onscroll = function() {myFunction()};

function myFunction() {
  var navbar = document.getElementsByTagName("nav")[0];
  
  if (document.body.scrollTop > 350 || document.documentElement.scrollTop > 350) {
    navbar.classList.remove("navbar-transparent");
  }
  else {
    navbar.classList.add("navbar-transparent");
  }
}
