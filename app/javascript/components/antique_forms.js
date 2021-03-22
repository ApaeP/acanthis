const ableizeSubmitting = () => {
  if (document.querySelector('.edit-antique-container')) {
    document.querySelectorAll('.edit-input').forEach((e) => {
      e.addEventListener('input', () => {
        document.querySelector('.antique-form-submit-btn').disabled = false;
        if (document.querySelector('.title-input').value == '') {
          document.querySelector('.antique-form-submit-btn').disabled = true;
        };
      });
    });
  } else if (document.querySelector('.new-antique-container')) {
    document.querySelector('.title-input').addEventListener('input', () => {
      document.querySelector('.antique-form-submit-btn').disabled = false;
      if (document.querySelector('.title-input').value == '') {
        document.querySelector('.antique-form-submit-btn').disabled = true;
      };
    });
  };
};

const actionsOnBtnAfterSubmit = () => {
  if (document.querySelector('.antique-form-submit-btn')) {
    const btn = document.querySelector('.antique-form-submit-btn');
    const loaderDiv = document.querySelector('.loader-div');
    btn.addEventListener('click', () => {
      if (btn.disabled === false) {
        btn.style.opacity = 0;
        setTimeout(function() {
          btn.remove();
          loaderDiv.style.display = 'flex';
          loaderDiv.style.opacity = 1;
        }, 350);
      };
    });
  };
};

export { ableizeSubmitting, actionsOnBtnAfterSubmit };
