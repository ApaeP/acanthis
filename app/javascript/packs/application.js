require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap';

import { themeToggle }                                                from '../components/theme_toggle';
import { closeShowModalWhenModify }                                   from '../pages/index';
import { openCarouselOnClickedElement, navigateFSCarouselWithArrows } from '../components/fullscreencarousel';
import { passSrcToVideoModal }                                        from '../components/videomodal';
import { initSwiperHome }                                             from '../components/homecarousel';
import { initMap }                                                    from '../components/googlemap';
import { openCarouselOnClickedElementV2 }                             from '../components/fullscreen_carouselv2';

$(document).on('turbolinks:load', function() {

  themeToggle();
  $('#carouselFullscreen').carousel('pause');
  navigateFSCarouselWithArrows();
  closeShowModalWhenModify();
  passSrcToVideoModal();
  openCarouselOnClickedElement();
  openCarouselOnClickedElementV2();
  initSwiperHome();
  initMap();

});

