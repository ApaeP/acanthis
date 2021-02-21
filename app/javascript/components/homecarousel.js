const initSwiperHome = () => {
  const vw = Math.max(document.documentElement.clientWidth || 0, window.innerWidth || 0)
  const vh = Math.max(document.documentElement.clientHeight || 0, window.innerHeight || 0)

  let slidesDependingOnWidth = 3;
  if (vw >= 1024) {
    slidesDependingOnWidth = 4;
  } else if (vw >= 800) {
    slidesDependingOnWidth = 3;
  } else if (vw >= 550) {
    slidesDependingOnWidth = 2;
  } else if (vw < 550) {
    slidesDependingOnWidth = 1;
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
