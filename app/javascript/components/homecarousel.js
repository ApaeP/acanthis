const initSwiperHome = () => {
  var slidesDependingOnWidth = 3;
  if (screen.width >= 1024) {
    slidesDependingOnWidth = 4;
  } else if (screen.width >= 550) {
    slidesDependingOnWidth = 3;
  } else if (screen.width < 550) {
    slidesDependingOnWidth = 2;
  }

  var swiper = new Swiper('.swiper-container', {
    slidesPerView: slidesDependingOnWidth,
    spaceBetween: 10,
    loop: true,
    // pagination: {
    //   el: '.swiper-pagination',
    //   clickable: false,
    // },
    autoplay: {
      delay: 3000,
      disableOnInteraction: true,
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  });
};

const resizeSwiperImages = () => {
  var swiperItemWidth = $('.swiper-slide-inside').width();
  $('.swiper-slide-inside').css({
      'height': swiperItemWidth + 'px'
  });
};

export { initSwiperHome, resizeSwiperImages };
