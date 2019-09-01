const checkboxes = document.querySelectorAll('.form-check-input')
const button = document.querySelector('.btn-clear-selection')

button.addEventListener("click", (event) => {
  checkboxes.forEach((checkbox) => {
    checkbox.checked = false
  })
})
