const allowSwiperNavWithKeys = () => {
  if (document.querySelector('#antiqueShowModal')) {
    document.addEventListener('keydown', (event) => {
      if (event.key === 'ArrowLeft') {
        document.querySelector('.swiper-button-prev').click();
      } else if (event.key === 'ArrowRight') {
        document.querySelector('.swiper-button-next').click();
      };
    });
  }
};

export { allowSwiperNavWithKeys };
