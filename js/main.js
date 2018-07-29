( function($) {

  // Variables de selectores
  var navbar = $("nav"),
      navbarCollapse = $(".navbar-collapse");

  // navbar: change bcolor on scroll
  window.onscroll = function() {

    if (document.body.scrollTop > 350 || document.documentElement.scrollTop > 350) {
      navbar.removeClass("navbar-transparent");
    }
    else {
      navbar.addClass("navbar-transparent");
    }
  }


}) (jQuery);
