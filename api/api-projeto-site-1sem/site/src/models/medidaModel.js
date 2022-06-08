var database = require("../database/config");

function buscarUltimasMedidas(id, limite_linhas, idCarro) {
    instrucaoSql = `select 
                          fkUser, 
                          likes, 
                          fkcarro,
                          DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico
                      from likes
                      where fkUser = ${id} and fkTimes = ${idCarro}
                      order by id desc limit ${limite_linhas}`;
    console.log(`Executando a instrução SQL: \n${instrucaoSql}`);
    return database.executar(instrucaoSql);
  }
  
  function atualizarMedida(fkcarro, fkUser) {
    instrucaoSql = `  update  
                      likes
                      set likes = likes + 1
                      where fkcarro =  ${fkcarro};
                  `;
  
    console.log(`Executando a instrução SQL: \n${instrucaoSql}`);
    return database.executar(instrucaoSql);
  }
  
  module.exports = {
    buscarUltimasMedidas,
    atualizarMedida,

  };