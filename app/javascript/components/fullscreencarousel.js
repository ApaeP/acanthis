// recuperer .carousel-item.active id
// passerr la classe .active au .fs-carousel-indicator correspondant via id

const activateCarouselIndicators = () => {
  // const carouselElements = document.querySelectorAll('.fs-car-item')
  // const carouselIndicators = document.querySelectorAll('.fs-carousel-indicators')

  // document.addEventListener('click', (event) => {
  //   if (document.querySelector('#fs-antiques-modal.show')) {




  //   }
  // });
};

const openCarouselOnClickedElement = () => {
  const modale = document.querySelector('#fs-antiques-modal')
  const allCards = document.querySelectorAll('.card-hover')

  allCards.forEach((card) => {
    card.addEventListener('click', (event) => {
      document.querySelector('.fs-car-item.active').classList.remove('active')
      document.querySelector(`#fs-car-item-${card.dataset.id}`).classList.add('active')
      $('#fs-antiques-modal').modal('show')
    });
  });
};

// export { activateCarouselIndicators };
export { openCarouselOnClickedElement };


// aria-hidden="true" quand pas ouvert
// aria-modal="true" pour ouvrir

// HTML
// <element aria-selected="p" ... >
// JavaScript
// object.setAttribute("aria-selected",value);
// var value = object.getAttribute("aria-selected");

// document.querySelector('#fs-antiques-modal').getAttribute("aria-hidden")
