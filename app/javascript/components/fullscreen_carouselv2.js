const openCarouselOnClickedElementV2 = () => {
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

export { openCarouselOnClickedElementV2 };
