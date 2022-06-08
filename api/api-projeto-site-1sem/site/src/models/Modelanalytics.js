var database = require("../database/config")

function listar() {
    var instrucao = `
    Select sum(likes) as Votos from carro join likes on fkcarro = idCarro group by modelocarro;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    listar
};