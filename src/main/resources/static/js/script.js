var button = document.querySelector(".contacts-btn");
var popup = document.querySelector(".feedback");
var close = document.querySelector(".feedback-cancel-btn");
var form = popup.querySelector("form");
var login = popup.querySelector("[name = login]");
var email = popup.querySelector("[name = email]");
var storage = localStorage.getItem("login");
var d = new Date();
var h = d.getHours();

button.addEventListener("click", function (evt) {
  evt.preventDefault();
  popup.classList.add("feedback-show");
  if (storage) {
  login.value = storage;
  email.focus();
  } else {
  login.focus();
  }
});

close.addEventListener("click", function (evt) {
  evt.preventDefault();
  popup.classList.remove("feedback-show");
  popup.classList.remove("feedback-error");
});

form.addEventListener("submit", function (evt) {
  if (!login.value || !email.value) {
  evt.preventDefault();
  popup.classList.remove("feedback-error");
  popup.offsetWidth = popup.offsetWidth;
  popup.classList.add("feedback-error");
  } else {
  localStorage.setItem("login", login.value);
  }
});

window.addEventListener("keydown", function(evt) {
  if (evt.keyCode === 27) {
  if (popup.classList.contains("feedback-show")) {
  popup.classList.remove("feedback-show");
  popup.classList.remove("feedback-error");
  }
  }
});


//if (h < 20 || h > 8) {
//	document.getElementById("style").href = "css/celeb_style.css";
//};



google.maps.event.addDomListener(window, "load", init);
  function init() {
  var mapOptions = {
  scrollwheel: false,
  zoom: 17,
  center: new google.maps.LatLng(59.93912203314914, 30.321463245755012),
  styles: [{}]
};

var mapElement = document.getElementById("map");
var image1 = new google.maps.MarkerImage(
  "img/map-marker.png",
  new google.maps.Size(231,190),
  new google.maps.Point(0,0),
  new google.maps.Point(50,180)
);

var map = new google.maps.Map(mapElement, mapOptions);
var marker1 = new google.maps.Marker({
  draggable: true,
  raiseOnDrag: false,
  position: new google.maps.LatLng(59.9387942, 30.323083300000008),
  icon: image1,
  map: map,
});
}


function highlightCurrent() {
    const curPage = document.URL;
    const links = document.getElementsByTagName('a');
    for (let link of links) {
        if (link.href == curPage) {
            link.classList.add("current");
        }
    }
}


document.onreadystatechange = () => {
    if (document.readyState === 'complete') {
        highlightCurrent()
    }
};

