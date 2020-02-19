require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap';
import { closeShowModalWhenModify } from '../pages/index';
import { launchFunctionOnLoad } from '../personalfunctions/launchonload';
import { dropdownmenuPhoto, dropdownmenuInfos } from '../components/dropdownmenus';
import { openCarouselOnClickedElement, navigateFSCarouselWithArrows } from '../components/fullscreencarousel';
import { passSrcToVideoModal } from '../components/videomodal';
import { initSwiperHome, resizeSwiperElements } from '../components/homecarousel';
import { initMap } from '../components/googlemap.js.erb';

$(document).on('turbolinks:load', function() {
  initMap();
  $(".dropdown-toggle").dropdown();
  $('#carouselFullscreen').carousel('pause')
  navigateFSCarouselWithArrows();
  initSwiperHome();
  resizeSwiperElements();
  dropdownmenuPhoto();
  dropdownmenuInfos();
  closeShowModalWhenModify();
  passSrcToVideoModal();
  openCarouselOnClickedElement();
  // var fsCarouselHeight = $('.photo-fs-carousel').width();
  // $('.fs-car-item').css({
  //     'max-height': fsCarouselHeight + 'px'
  // });
});

// import { displayInfosOnHover } from '../components/cardinfo';
// displayInfosOnHover();

// window.addEventListener("DOMContentLoaded", (event) => {
// });
