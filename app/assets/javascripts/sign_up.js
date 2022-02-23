console.log('sign_up')

const togglePassword1 = document.querySelector("#togglePassword-1");
const password1 = document.querySelector("#password-1");
togglePassword1.addEventListener("click", function () {
    // toggle the type attribute
    const type1 = password1.getAttribute("type") === "password" ? "text" : "password";
    password1.setAttribute("type", type1);
    // toggle the icon
    this.classList.toggle("bi-eye");
});
const togglePassword2 = document.querySelector("#togglePassword-2");
const password2 = document.querySelector("#password-2");
togglePassword2.addEventListener("click", function () {
    // toggle the type attribute
    const type2 = password2.getAttribute("type") === "password" ? "text" : "password";
    password2.setAttribute("type", type2);
    // toggle the icon
    this.classList.toggle("bi-eye");
});
// prevent form submit
const form = document.querySelector("form");
form.addEventListener('submit', function (e) {
    e.preventDefault();
});