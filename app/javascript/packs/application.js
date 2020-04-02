require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";


// erase after demoing

const sectionButtons = document.querySelectorAll('.button-section');

const addActive = (event) => {
  event.preventDefault();
  event.target.classList.add('active');
}


sectionButtons.forEach((button) => {
  button.addEventListener('click', addActive);
})


