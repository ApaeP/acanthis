const initSwiperHome = () => {

  let slidesDependingOnWidth = 3;
  if (screen.width >= 1024) {
    slidesDependingOnWidth = 4;
  } else if (screen.width >= 550) {
    slidesDependingOnWidth = 3;
  } else if (screen.width < 550) {
    slidesDependingOnWidth = 2;
  }

  let swiper = new Swiper('.swiper-container', {
    slidesPerView: slidesDependingOnWidth,
    spaceBetween: 10,
    loop: true,
    autoplay: {
      delay: 2250,
      disableOnInteraction: true,
      },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
      },
  });
};

// const resizeSwiperElements = () => {
//   var swiperItemWidth = $('.swiper-slide-inside').width();
//   $('.swiper-slide-inside').css({
//       'height': swiperItemWidth + 'px'
//   });
//   $('.carousel-home-container').css({
//     'height': swiperItemWidth + 'px'
//   });
// };

export { initSwiperHome }; //, resizeSwiperElements };
