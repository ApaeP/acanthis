const openCarouselOnClickedElement = () => {
  document.querySelectorAll('.sq-card').forEach((card) => {
    card.addEventListener('click', (event) => {
      if (event.target.classList.contains('sq-card-lnk')) {
        return
      } else {
        document.querySelector('.fs-car-item.active').classList.remove('active');
        document.querySelector(`#fs-car-item-${card.dataset.id}`).classList.add('active');
        $('#fs-antiques-modalv2').modal('show');
      };
    });
  });
};

const navigateFSCarouselWithArrows = () => {
  if (document.querySelector('#carouselFullscreen')) {
    document.addEventListener('keydown', (event) => {
      if (event.key === 'ArrowLeft') {
        document.querySelector('#carousel-control-fs.carousel-control-prev').click();
      };
      if (event.key === 'ArrowRight') {
        document.querySelector('#carousel-control-fs.carousel-control-next').click();
      };
    });
  };
};

export { openCarouselOnClickedElement, navigateFSCarouselWithArrows };
