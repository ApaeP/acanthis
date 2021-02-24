// const dropdownmenuPhoto = () => {

//   const dropdownPhotoElements = document.querySelector('#nav-dropdown-photo')
//   const dropdownPhotoLink = document.querySelector('#dropdownPhotoMenuLink')
//   const dropdownPhotoLinks = document.querySelectorAll('.dropdown-item.photo-cat')

//   const otherPhotoDropDown = document.querySelector('#dropdownMenuLinkInfos')
//   const logoPhotoNavbar = document.querySelector('#logo-navbar')
//   const contactPhotoNavbar = document.querySelector('#contact-navbar')

//   const echapPhotoBtns = [otherPhotoDropDown, logoPhotoNavbar, contactPhotoNavbar]

//   dropdownPhotoLink.addEventListener('mouseover', (event) => {
//     dropdownPhotoElements.classList.add('show');
//   });

//   dropdownPhotoLinks.forEach((link) => {
//     link.addEventListener('mouseover', (event) => {
//       dropdownPhotoElements.classList.add('show');
//       dropdownPhotoElements.classList.add('tiny');
//     });
//     link.addEventListener('mouseout', (event) => {
//       dropdownPhotoElements.classList.remove('show')
//       dropdownPhotoElements.classList.remove('tiny')
//     })
//   });

//   dropdownPhotoLink.addEventListener('mouseout', (event) => {
//     setTimeout(function() {
//       if (document.querySelector('.dropdown-item.photo-cat').classList.contains('tiny')) {
//         dropdownPhotoElements.classList.remove('show')
//       }
//     }, 100)
//   });

//   echapPhotoBtns.forEach((btn) => {
//     btn.addEventListener('mouseover', (event) => {
//       dropdownPhotoElements.classList.remove('show');
//     });
//   });

// };

// const dropdownmenuInfos = () => {
//   const dropdownInfoElements = document.querySelector('#nav-dropdown-infos')
//   const dropdownInfoLink = document.querySelector('#dropdownMenuLinkInfos')
//   const dropdownInfoLinks = document.querySelectorAll('.dropdown-item.info')

//   const otherInfoDropDown = document.querySelector('#dropdownPhotoMenuLink')
//   const logoInfoNavbar = document.querySelector('#logo-navbar')
//   const contactInfoNavbar = document.querySelector('#contact-navbar')

//   const echapInfoBtns = [otherInfoDropDown, logoInfoNavbar, contactInfoNavbar]

//   dropdownInfoLink.addEventListener('mouseover', (event) => {
//     dropdownInfoElements.classList.add('show');
//   });


//   dropdownInfoLinks.forEach((link) => {
//     link.addEventListener('mouseover', (event) => {
//       dropdownInfoElements.classList.add('show');
//       dropdownInfoElements.classList.add('tiny');
//     });
//     link.addEventListener('mouseout', (event) => {
//       dropdownInfoElements.classList.remove('show')
//       dropdownInfoElements.classList.remove('tiny')
//     })
//   });

//   dropdownInfoLink.addEventListener('mouseout', (event) => {
//     setTimeout(function() {
//       if (document.querySelector('.dropdown-item.info').classList.contains('tiny')) {
//         dropdownInfoElements.classList.remove('show')
//       }
//     }, 100)
//   });

//   otherInfoDropDown.addEventListener('mouseover', (event) => {
//     dropdownInfoElements.classList.remove('show')
//   });

//   echapInfoBtns.forEach((btn) => {
//     btn.addEventListener('mouseover', (event) => {
//       dropdownInfoElements.classList.remove('show');
//     });
//   });

// };

// export { dropdownmenuPhoto, dropdownmenuInfos };
