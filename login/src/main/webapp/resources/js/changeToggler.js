function changeToggler() {
  let togglerIcon = document.querySelector(".navbar-toggler-icon");
  if (togglerIcon.classList.contains("active")) {
    togglerIcon.classList.remove("active");
  } else {
    togglerIcon.classList.add("active");
  }
}
