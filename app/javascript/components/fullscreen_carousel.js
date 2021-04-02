const openCarouselOnClickedElement = () => {
  if (document.querySelector('.sq-card')) {
    // for each index card
    document.querySelectorAll('.sq-card').forEach((card) => {
      // adding a click listener
      card.addEventListener('click', (event) => {

        // verify that the targets is actually a link to an antique, if not, return
        if (event.target.classList.contains('sq-card-lnk')) {
          return
        } else {
          // find the active arousel element and remove deactivate it
          document.querySelector('.fs-car-item.active').classList.remove('active');
          // activate the carousel element linked to the click target
          document.querySelector(`#fs-car-item-${card.dataset.id}`).classList.add('active');
          // show the carousel
          $('#fs-antiques-modalv2').modal('show');
        };

      });
    });
  };
};

const navigateFSCarouselWithArrows = () => {
  if (document.querySelector('#carouselFullscreen')) {
    document.addEventListener('keydown', (event) => {
      if (event.key === 'ArrowLeft') {
        document.querySelector('.carousel-control-prev').click();
      } else if (event.key === 'ArrowRight') {
        document.querySelector('.carousel-control-next').click();
      };
    });
  };
};

export { openCarouselOnClickedElement, navigateFSCarouselWithArrows };
