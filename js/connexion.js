const btn = document.getElementById("btn_connexion");
const email = document.getElementById("email");
const password = document.getElementById("password");
btn.addEventListener("click", f_valid);

function f_valid() {
    if (email.value == "") {
        alert("Veuillez renseigner votre email");
    }else if (password.value == "") {
        alert("Veuillez renseigner votre mot de passe");
    }else {
        alert("Connexion réussie");
    } 
}