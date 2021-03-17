require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap';

import { themeToggle }                                                from '../components/theme_toggle';
import { closeShowModalWhenModify }                                   from '../pages/index';
import { passSrcToVideoModal }                                        from '../components/videomodal';
import { initSwiperHome }                                             from '../components/homecarousel';
import { initMap }                                                    from '../components/googlemap';
import { openCarouselOnClickedElement, navigateFSCarouselWithArrows } from '../components/fullscreen_carousel';

$(document).on('turbolinks:load', function() {

  themeToggle();
  $('#carouselFullscreen').carousel('pause');
  navigateFSCarouselWithArrows();
  closeShowModalWhenModify();
  passSrcToVideoModal();
  openCarouselOnClickedElement();
  initSwiperHome();
  initMap();

});

