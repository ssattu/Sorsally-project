
console.log(1);

const togglePassword = document.querySelector("#togglePassword");
        const password = document.querySelector("#password");
        togglePassword.addEventListener("click", function () {
            console.log(10);
            // toggle the type attribute
            var type = password.getAttribute("type") === "password" ? "text" : "password";
            console.log(type)
            password.setAttribute("type", type);
            // toggle the icon
            this.classList.toggle("bi-eye");
            // $(".bi-eye").toggle();
        });
        

