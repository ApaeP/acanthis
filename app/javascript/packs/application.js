require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap';

import { closeShowModalWhenModify }                                   from '../pages/index';
import { openCarouselOnClickedElement, navigateFSCarouselWithArrows } from '../components/fullscreencarousel';
import { passSrcToVideoModal }                                        from '../components/videomodal';
import { initSwiperHome }                                             from '../components/homecarousel';
import { initMap }                                                    from '../components/googlemap';

$(document).on('turbolinks:load', function() {

  initMap();
  $('#carouselFullscreen').carousel('pause');
  navigateFSCarouselWithArrows();
  closeShowModalWhenModify();
  passSrcToVideoModal();
  openCarouselOnClickedElement();
  initSwiperHome();

});

