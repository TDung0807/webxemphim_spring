// $(document).ready(() {
//     $('#hamburger-menu').click(() => {
//         $('#hamburger-menu').toggleClass('active');
//         $('#menu_item').toggleClass('active');
//     })
// })




// Changecolornav
window.addEventListener("scroll", function () {
  var navbar = document.querySelector(".navbar");
  if (window.pageYOffset > 50) {
    navbar.classList.add("navbar--scrolled");
    navbar.classList.remove("navbar--top");
  } else {
    navbar.classList.remove("navbar--scrolled");
    navbar.classList.add("navbar--top");
  }
});


// dropdown132

function closedropdown132() {
  document.getElementById("mydropdown132").classList.remove("show");
}


function dropdown132() {
  document.getElementById("mydropdown132").classList.add("show");
}

function closedropdown1321() {
  document.getElementById("mydropdown1321").classList.remove("show");
}


function dropdown1321() {
  document.getElementById("mydropdown1321").classList.add("show");
}
function closedropdown1322() {
  document.getElementById("mydropdown1322").classList.remove("show");
}


function dropdown1322() {
  document.getElementById("mydropdown1322").classList.add("show");
}

window.onmousemove = function (e) {
  if (!e.target.matches('.dropdown132, .dropdown132 *')) {
    closedropdown132();
  }
}


const startWatchingBtn = document.getElementById("start-watching-btn");
const moviesSection = document.getElementById("movies1");


startWatchingBtn.addEventListener("click", () => {
  event.preventDefault();
  moviesSection.scrollIntoView({ behavior: "smooth" });
});


