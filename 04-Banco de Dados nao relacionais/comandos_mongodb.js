//INSERE UM ELEMENTO
db.timesfutebol.insertOne({"_id": 1, "nome": "Cruzeiro", "pais": "Brasil"})
db.timesfutebol.insertOne({"_id": 2, "nome": "S�o Paulo", "pais": "Brasil"})
//INSERE V�RIOS ELEMENTOS
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


//SELE��O DE REGISTROS
//0 N�O QUER QUE TRAGA E 1 QUER QUE TRAGA
//BASTA COLOCAR 0 ONDE NOS CAMPOS QUE N�O QUER PARA QUE TRAGA TODOS OS OUTROS
db.timesfutebol.find({"nome":"Cruzeiro"}, {"_id" : 0, "nome": 1, "pais":1})
    
db.timesfutebol.find();
db.timesfutebol.findOne({"_id" : 2})

//Update / Atualiza��o de Registros
//updateOne() - Atualiza um
//updateMany() - Atualiza v�rios
/*
replaceOne() - localiza um �nico documento que atenda aos crit�rios 
               especificados e o substitui por um novo documento (_id permanece o mesmo)
*/
db.timesfutebol.updateOne({"_id":ObjectId("5b8a887762e419b74f2fdc53")}, {$set: {"nome":"Atl�tico MG", "pais": "Brasil"}})

db.timesfutebol.updateMany({"pais": "Brasil"}, {$unset: {"pais":"Brasil"}})

db.timesFutebol.replaceOne({"mundial" : 0}, {"nome" : "Palmeiras"})

//DELETE
//deleteOne()
//deleteMany()

db.timesfutebol.deleteOne({"nome" : "Palmeiras"})
db.timesfutebol.deleteMany({})

//O mongodb n�o implementa integridade referencial e nem opera��es de jun��o
//Existe duas maneiras para expressar relacionamentos entre documentos
//Refer�ncias entre documentos: � poss�vel guardar o _id de um documento como um atributo em outro documento.
//n�o � o mesmo que guardar uma chave estrangeira
//Dcoumentos embutidos: O mongoDB permite guardar um documento inteiro como um atributo em um documento (Sub-Documentos).

/*
Operadores MongoDB

*/