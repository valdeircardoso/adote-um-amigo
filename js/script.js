
document.addEventListener("DOMContentLoaded", function () {
    const campoBusca = document.querySelector("#buscaNome");
    const filtroEspecie = document.querySelector("#filtroEspecie");
    const animais = document.querySelectorAll(".animal-card");

    function filtrarAnimais() {
        const busca = campoBusca
            ? campoBusca.value.toLowerCase().trim()
            : "";

        const especie = filtroEspecie
            ? filtroEspecie.value.toLowerCase()
            : "";

        animais.forEach(function (animal) {
            const texto = animal.textContent.toLowerCase();
            const nome = animal.dataset.nome
                ? animal.dataset.nome.toLowerCase()
                : texto;

            const especieAnimal = animal.dataset.especie
                ? animal.dataset.especie.toLowerCase()
                : "";

            const correspondeNome =
                nome.includes(busca) || texto.includes(busca);

            const correspondeEspecie =
                especie === "" || especieAnimal === especie;

            animal.style.display =
                correspondeNome && correspondeEspecie
                    ? ""
                    : "none";
        });
    }

    if (campoBusca) {
        campoBusca.addEventListener("input", filtrarAnimais);
    }

    if (filtroEspecie) {
        filtroEspecie.addEventListener("change", filtrarAnimais);
    }

    filtrarAnimais();
});
