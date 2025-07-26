const body = document.querySelector('body');
const menuTrigger = document.querySelector('#toggle-menu-main-mobile');
const menuContainer = document.querySelector('#menu-main-mobile');
const hamburgerIcon = document.querySelector('.hamburger');

if (menuTrigger) {
  menuTrigger.addEventListener('click', (e) => {
    menuContainer.classList.toggle('open');
    hamburgerIcon.classList.toggle('is-active');
    body.classList.toggle('lock-scroll');
  });
}
