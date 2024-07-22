const btn = document.getElementById("btn_avis");
btn.addEventListener("click", f_valid);

function f_valid() {
    const pseudo = document.getElementById("pseudo").value;
    const avis = document.getElementById("avis").value;

    if (pseudo == "" || avis == "") {
        alert("Veuillez remplir tous les champs");
    } else {
        alert("Merci " + pseudo + " " + "pour votre message");
    }
}