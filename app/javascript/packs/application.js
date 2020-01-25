import 'bootstrap';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { closeShowModalWhenModify, goLeft, goRight, navigateShow } from '../pages/index';
import { launchFunctionOnLoad } from '../personalfunctions/launchonload';

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

initMapbox();

// Carousel
$('#carousel-example').on('slide.bs.carousel', function (e) {
    var $e = $(e.relatedTarget);
    var idx = $e.index();
    var itemsPerSlide = 3;
    var totalItems = $('.carousel-item').length;

    if (idx >= totalItems-(itemsPerSlide-1)) {
        var it = itemsPerSlide - (totalItems - idx);
        for (var i=0; i<it; i++) {
            // append slides to end
            if (e.direction=="left") {
                $('.carousel-item').eq(i).appendTo('.carousel-inner');
            }
            else {
                $('.carousel-item').eq(0).appendTo('.carousel-inner');
            }
        }
    }
});

// Close Show Modal when Modify btn is clicked
  if(window.attachEvent) {
    window.attachEvent('onload', closeShowModalWhenModify);
} else {
    if(window.onload) {
        var curronload = window.onload;
        var newonload = function(evt) {
            curronload(evt);
            closeShowModalWhenModify(evt);
        };
        window.onload = newonload;
    } else {
        window.onload = closeShowModalWhenModify;
    }
};

  if(window.attachEvent) {
    window.attachEvent('onload', navigateShow);
} else {
    if(window.onload) {
        var curronload = window.onload;
        var newonload = function(evt) {
            curronload(evt);
            navigateShow(evt);
        };
        window.onload = newonload;
    } else {
        window.onload = navigateShow;
    }
};

//   if(window.attachEvent) {
//     window.attachEvent('onload', goRight);
// } else {
//     if(window.onload) {
//         var curronload = window.onload;
//         var newonload = function(evt) {
//             curronload(evt);
//             goRight(evt);
//         };
//         window.onload = newonload;
//     } else {
//         window.onload = goRight;
//     }
// };
