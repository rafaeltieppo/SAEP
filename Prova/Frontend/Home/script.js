var modal = document.querySelector('.cardcadastro');

function listarEquipamentos() {
    fetch("http://localhost:3000/equipamento")
    .then(res => res.json())
    .then(data => {
        data.forEach(equipamento => {
            let card = document.createElement("div");
            card.classList.add("card");
            card.innerHTML = `
            <div class="card-body">
                <div class="card-image">
                    <img src="../assets/${equipamento.imagem}.png">
                </div>
                <div class="card-content">
                    <span class="card-title">${equipamento.nome}</span>
                    <p class="pdesc">${equipamento.descricao}</p>
                </div>
                <div class="card-icones">
                    <img src="../assets/deletar.png" id="iconedeletar">
                    <img src="../assets/comentario.png" id="iconecomentario">
                </div>
                <div class="linha">
            </div>
            `;
            document.querySelector("body").appendChild(card);
        })
    })
}

function abrircard() {
    modal.style.display = "flex";
}

function closeModal() {
    modal.style.display = "none";
}

function cadastrarEquipamento() {
    let nome = document.querySelector("#nome").value;
    let descricao = document.querySelector("#descricao").value;
    let imagem = document.querySelector("#foto").value;

    let data = {
        nome: nome,
        descricao: descricao,
        imagem: imagem
    }

    fetch("http://localhost:3000/equipamento", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(data)
    })
    .then(res => res.json())
    .then(data => {
        if(data !== null) {
            alert("Equipamento cadastrado com sucesso");
        }else {
            alert("Erro ao cadastrar equipamento");
        }
    })
}

let iconedeletar = document.querySelectorById("iconedeletar");

iconedeletar.addEventListener("click", () => {

})