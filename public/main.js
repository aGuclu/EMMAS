console.log('SUCCESS')

window.onscroll = function() {scrollNav()};

function scrollNav() {
  if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
    document.getElementById("nav").style.padding = "10px 0px";
    document.getElementById("logo").style.fontSize = "30px";
    document.getElementById("navcenter").style.margin = "0px";
    document.getElementById("nav-links").style.marginTop = "0px";
    document.getElementById("nav-links").style.paddingTop = "0px";
  } else {
    document.getElementById("nav").style.padding = "100px 0px";
    document.getElementById("logo").style.fontSize = "55px";
    document.getElementById("navcenter").style.margin = "0px 30px";
    document.getElementById("nav-links").style.marginTop = "10px";
    document.getElementById("nav-links").style.paddingTop = "10px";
  }
}
