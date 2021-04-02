const previewImageOnFileSelect = () => {
  // we select the photo input
  const input = document.querySelector('.edit-image-input');
  if (input) {
    // we add a listener to know when a new picture is uploaded
    input.addEventListener('change', () => {
      if (document.querySelector('.added-image')) {
        document.querySelectorAll('.added-image').forEach((e) => {
          e.remove();
        });
      };
      // we call the displayPreview function (who retrieve the image url and display it)
      displayPreview(input);
    })
  };
};

const buildImgElemInEdit = (file) => {
  let elem = document.createElement("img");
  elem.setAttribute("height", "150px");
  elem.setAttribute("width", "150px");
  elem.setAttribute("alt", file.name);
  elem.classList.add('added-image');
  return elem;
};

const displayPreview = (input) => {
  const editDiv = document.querySelector('.edit-image-div-add');
  if (input.files && input.files[0]) {

    for (let x = 0; x < input.files.length; x += 1) {

      let file = Array.from(input.files)[x];

      // create the img tag to display element
      let elem = buildImgElemInEdit(file);

      // set an id for the elem
      elem.id = `tmp-img-${1}`;

      // append child element to the edit images div
      editDiv.appendChild(elem);

      // set the src of the created element
      let reader = new FileReader();
      reader.onload = (event) => {
        elem.src = event.currentTarget.result;
      };
      reader.readAsDataURL(file);
    };
  };
};

export { previewImageOnFileSelect };








































