//INSERE UM ELEMENTO
db.timesfutebol.insertOne({"_id": 1, "nome": "Cruzeiro", "pais": "Brasil"})
db.timesfutebol.insertOne({"_id": 2, "nome": "São Paulo", "pais": "Brasil"})
//INSERE VÁRIOS ELEMENTOS
db.timesfutebol.insertMany([
    {
        "nome":"Barcelona",
        "pais": "Espanha"
    },
    {
        "nome" : "Palmeniras",
        "mundial" : "0"
    }
])


//SELEÇÃO DE REGISTROS
//0 NÃO QUER QUE TRAGA E 1 QUER QUE TRAGA
//BASTA COLOCAR 0 ONDE NOS CAMPOS QUE NÃO QUER PARA QUE TRAGA TODOS OS OUTROS
db.timesfutebol.find({"nome":"Cruzeiro"}, {"_id" : 0, "nome": 1, "pais":1})
    
db.timesfutebol.find();
db.timesfutebol.findOne({"_id" : 2})

//Update / Atualização de Registros
//updateOne() - Atualiza um
//updateMany() - Atualiza vários
/*
replaceOne() - localiza um único documento que atenda aos critérios 
               especificados e o substitui por um novo documento (_id permanece o mesmo)
*/
db.timesfutebol.updateOne({"_id":ObjectId("5b8a887762e419b74f2fdc53")}, {$set: {"nome":"Atlético MG", "pais": "Brasil"}})

db.timesfutebol.updateMany({"pais": "Brasil"}, {$unset: {"pais":"Brasil"}})

db.timesFutebol.replaceOne({"mundial" : 0}, {"nome" : "Palmeiras"})

//DELETE
//deleteOne()
//deleteMany()

db.timesfutebol.deleteOne({"nome" : "Palmeiras"})
db.timesfutebol.deleteMany({})

//O mongodb não implementa integridade referencial e nem operações de junção
//Existe duas maneiras para expressar relacionamentos entre documentos
//Referências entre documentos: É possível guardar o _id de um documento como um atributo em outro documento.
//não é o mesmo que guardar uma chave estrangeira
//Dcoumentos embutidos: O mongoDB permite guardar um documento inteiro como um atributo em um documento (Sub-Documentos).

/*
Operadores MongoDB

*/