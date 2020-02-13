// require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap';
import { closeShowModalWhenModify } from '../pages/index';
import { launchFunctionOnLoad } from '../personalfunctions/launchonload';
import { dropdownmenuPhoto, dropdownmenuInfos } from '../components/dropdownmenus';
import { openCarouselOnClickedElement } from '../components/fullscreencarousel'
// import { activateCarouselIndicators } from '../components/fullscreencarousel'

$(document).on('turbolinks:load', function() {
  $(".dropdown-toggle").dropdown();
  $('#carouselFullscreen').carousel('pause')
  dropdownmenuPhoto();
  dropdownmenuInfos();
  closeShowModalWhenModify();
  openCarouselOnClickedElement();
  // activateCarouselIndicators();
})
