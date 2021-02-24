require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap';

import { closeShowModalWhenModify }                                   from '../pages/index';
import { launchFunctionOnLoad }                                       from '../personalfunctions/launchonload';
import { openCarouselOnClickedElement, navigateFSCarouselWithArrows } from '../components/fullscreencarousel';
import { passSrcToVideoModal }                                        from '../components/videomodal';
import { initSwiperHome }                                             from '../components/homecarousel';
import { initMap }                                                    from '../components/googlemap';
import { openCloseDropdownMenu }                                      from '../components/dropdown_menus';

$(document).on('turbolinks:load', function() {

  openCloseDropdownMenu('dropdownPhotoMenuLink', 'nav-dropdown-photo');
  openCloseDropdownMenu('dropdownMenuLinkInfos', 'nav-dropdown-infos');
  initMap();
  $(".dropdown-toggle").dropdown();
  $('#carouselFullscreen').carousel('pause');
  navigateFSCarouselWithArrows();
  closeShowModalWhenModify();
  passSrcToVideoModal();
  openCarouselOnClickedElement();
  initSwiperHome();

});

