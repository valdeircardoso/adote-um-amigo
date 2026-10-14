
document.addEventListener("DOMContentLoaded", function () {
    console.log("Adote um Amigo carregado com sucesso!");

    const campoBusca = document.querySelector("#buscaNome");
    const filtroEspecie = document.querySelector("#filtroEspecie");

    if (campoBusca) {
        campoBusca.addEventListener("input", function () {
            console.log("Busca:", campoBusca.value);
        });
    }

    if (filtroEspecie) {
        filtroEspecie.addEventListener("change", function () {
            console.log("Espécie selecionada:", filtroEspecie.value);
        });
    }
});
