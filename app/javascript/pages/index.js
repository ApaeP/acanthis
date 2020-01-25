const closeShowModalWhenModify = () => {
  // Je selectionne tous les boutons modifier
  var modifyButtons = document.querySelectorAll('.modify-btn')

  // Iteration pour choper l'id de l'objet affiché
  modifyButtons.forEach((result) => {
    // Je cherche lequel de ces elements est cliqué
    result.addEventListener('click', (event) => {
      // Je récupere l'id de l'objet cliqué
      var antiqueId = event.currentTarget.dataset.set
      // Je recupere le bouton close modal
      var closeButton = document.querySelector(`#close-show-${antiqueId}`);
      // Je fais disparaitre onclick la modal show
      closeButton.click();
    });
  });
};

const goLeft = () => {
  var goLeftBtns = document.querySelectorAll('.go-left')

  goLeftBtns.forEach((result) => {
    result.addEventListener('click', (event) => {
      var antiqueIndexLeft = event.currentTarget.dataset.index
      document.querySelector(`#close-show-${event.currentTarget.dataset.id}`).click();
      document.querySelector(`#show-link-${parseInt(antiqueIndexLeft) - parseInt(1)}`).click();
    });
  });
};

const goRight = () => {
  var goRightBtns = document.querySelectorAll('.go-right')

  goRightBtns.forEach((result) => {
    result.addEventListener('click', (event) => {
      var antiqueIndexRight = event.currentTarget.dataset.index
      document.querySelector(`#close-show-${event.currentTarget.dataset.id}`).click();
      document.querySelector(`#show-link-${parseInt(antiqueIndexRight) + parseInt(1)}`).click();
    });
  });
};

const navigateWithArrows = () => {
  document.addEventListener('keydown', (event) => {
    if(event.keyCode == 37) {
      document.querySelector('.show .go-left').click();
    } else if (event.keyCode == 39) {
      document.querySelector('.show .go-right').click();
    };
  });
};

const navigateShow = () => {
  goLeft();
  goRight();
  navigateWithArrows();
};

// const setWidthOfGoBtns = () => {
//   var modalWidth = document.querySelector('.show-antique-modal-body').offsetWidth
//   var goLeftBtn = document.querySelector('.go-left')
//   goLeftBtn.style.width = (document.width - modalWidth) / 2;
// };

export { closeShowModalWhenModify, navigateShow };
