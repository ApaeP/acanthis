require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap';

import { themeToggle }                                                from '../components/theme_toggle';
// import { closeShowModalWhenModify }                                   from '../pages/index';
import { passSrcToVideoModal }                                        from '../components/videomodal';
import { initSwiperHome }                                             from '../components/homecarousel';
import { initMap }                                                    from '../components/googlemap';
import { openCarouselOnClickedElement, navigateFSCarouselWithArrows } from '../components/fullscreen_carousel';
import { previewImageOnFileSelect }                                   from '../components/photo_preview';
import { ableizeSubmitting, actionsOnBtnAfterSubmit }                 from '../components/antique_forms';
import { allowSwiperNavWithKeys }                                     from '../components/key_nav_swiper';

$(document).on('turbolinks:load', function() {

  ableizeSubmitting();
  allowSwiperNavWithKeys();
  actionsOnBtnAfterSubmit();
  previewImageOnFileSelect();
  themeToggle();
  $('#carouselFullscreen').carousel('pause');
  navigateFSCarouselWithArrows();
  passSrcToVideoModal();
  openCarouselOnClickedElement();
  initSwiperHome();
  initMap();

});

