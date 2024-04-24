// const progressBar = document.getElementsByClassName('progress-bar')[0];
// function updateDisplay() {
//   progressBar.classList.remove('progress-bar');
//   setTimeout(() => progressBar.classList.add('progress-bar'), 1);
// }
// progressBar.addEventListener("animationend", markDone);
// function markDone() {
//   updateDisplay();
// }

$(document).ready(function () {

  $('.carousel').carousel({
    interval: 5000,
    pause: false
  });

  $('.carousel').on('slid.bs.carousel', function () {
    $('.progress-bar').css('animation-name', 'fill');
  });

});
