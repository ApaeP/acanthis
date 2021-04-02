const ableizeSubmitting = () => {
  document.querySelectorAll('.edit-input').forEach((input) => {
    input.addEventListener('input', () => {
      document.querySelector('.antique-form-submit-btn').dataset.clickable = 'true';
      if (document.querySelector('.title-input').value == '') {
        document.querySelector('.antique-form-submit-btn').dataset.clickable = 'false';
      };
    });
  });
  document.querySelectorAll('.delete-image-link').forEach((link) => {
    link.addEventListener('click', () => {
      document.querySelector('.antique-form-submit-btn').dataset.clickable = 'true';
    })
  });
};

const authorizeSubmit = () => {
  if (document.querySelector('.antique-form-submit-btn')) {
    const button = document.querySelector('.antique-form-submit-btn');
    button.addEventListener('click', (event) => {
      if (button.dataset.clickable == 'false') {
        event.preventDefault();
      } else if (button.dataset.clickable == 'true') {
        transformButton(button);
      }
    });
  }
};

const transformButton = (button) => {
  const loaderDiv = document.querySelector('.loader-div');
  button.style.opacity = 0;
  setTimeout(function() {
    button.remove();
    loaderDiv.style.display = 'flex';
    loaderDiv.style.opacity = 1;
  }, 350);
};

export { ableizeSubmitting, authorizeSubmit };
