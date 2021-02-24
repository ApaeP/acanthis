const openCarouselOnClickedElement = () => {
  const modale = document.querySelector('#fs-antiques-modal');
  const allCards = document.querySelectorAll('.card-hover');
  allCards.forEach((card) => {
    card.addEventListener('click', (event) => {
      // si la cible de base de l'evenement, en loccurence 'card' est differente de la cible au moment de l'evenement (event.currentTarget !== event.target)
      if (event.currentTarget === event.target || event.target === document.querySelector(`#text-hover-${card.dataset.id}`)) {
        document.querySelector('.fs-car-item.active').classList.remove('active');
        document.querySelector(`#fs-car-item-${card.dataset.id}`).classList.add('active');
        $('#fs-antiques-modal').modal('show');
      } else {
        return;
      };
    }, false);
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

// const activateCarouselIndicators = () => {
  // const carouselElements = document.querySelectorAll('.fs-car-item')
  // const carouselIndicators = document.querySelectorAll('.fs-carousel-indicators')
  // document.addEventListener('click', (event) => {
  //   if (document.querySelector('#fs-antiques-modal.show')) {
  //   }
  // });
// };

// export { activateCarouselIndicators };
export { openCarouselOnClickedElement, navigateFSCarouselWithArrows };
