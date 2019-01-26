library(R6)

Cliente <- R6Class("Cliente",
                  private = list(
                    cpf = NULL
                  ),
                  public = list(
                    
                    get_cpf = function(cpf) {
                      return(private$cpf)
                    },
                    set_cpf = function(cpf) {
                      
                        if (nchar(cpf) != 11)
                        {
                          cat("O cpf deve ser igual a 11 digitos");
                        }
                        else
                        {
                          private$cpf <- cpf
                        }
                    }
                  )
)

cliente <- Cliente$new()
#Erro de Acesso Privado
cliente$cpf = 10

#Erro de Validacao
cliente$set_cpf("380167345001")

#OK
cliente$set_cpf("38016734500")
cat(cliente$get_cpf())

