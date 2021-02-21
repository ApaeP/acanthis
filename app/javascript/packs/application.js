require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap';

import { closeShowModalWhenModify } from '../pages/index';
import { launchFunctionOnLoad } from '../personalfunctions/launchonload';
import { dropdownmenuPhoto, dropdownmenuInfos } from '../components/dropdownmenus';
import { openCarouselOnClickedElement, navigateFSCarouselWithArrows } from '../components/fullscreencarousel';
import { passSrcToVideoModal } from '../components/videomodal';
import { initSwiperHome } from '../components/homecarousel'; //, resizeSwiperElements } from '../components/homecarousel';
import { initMap } from '../components/googlemap.js.erb';

$(document).on('turbolinks:load', function() {

  console.log('coucou1')
  initMap();
  $(".dropdown-toggle").dropdown();
  $('#carouselFullscreen').carousel('pause')
  navigateFSCarouselWithArrows();
  // resizeSwiperElements();
  dropdownmenuPhoto();
  dropdownmenuInfos();
  closeShowModalWhenModify();
  passSrcToVideoModal();
  openCarouselOnClickedElement();
  initSwiperHome();
  // var fsCarouselHeight = $('.photo-fs-carousel').width();
  console.log('coucou2')
  // $('.fs-car-item').css({
  //     'max-height': fsCarouselHeight + 'px'
  // });
});

document.querySelectorAll('.submit-new-element').forEach((btn) => {
  btn.addEventListener('click', (event) => {
    if (document.querySelector('#antique_title').value !== "")
    document.querySelector('#loading-new-elem').style.display = 'block'
  });
});
