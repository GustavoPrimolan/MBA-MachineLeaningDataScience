library(R6)

Figura <- R6Class("Figura",
                        public = list(
                          calcularArea = function() {
                          }
                        )
)

Quadrado <- R6Class("Quadrado",
                      inherit = Figura,
                      public = list(
                        lado = NULL,
                        
                        initialize = function(lado = NA) {
                          self$lado <- lado
                        },
                        
                        calcularArea = function() {
                          return(self$lado * self$lado)
                        }
                        
                      )
)


Circulo <- R6Class("Circulo",
                    inherit = Figura,
                    public = list(
                      raio = NULL,
                      
                      initialize = function(raio = NA) {
                        self$raio <- raio
                      },
                      
                      calcularArea = function() {
                        return(pi * self$raio * self$raio)
                      }
                      
                    )
)

quadrado <- Quadrado$new(10)
quadrado$calcularArea()

circulo <- Circulo$new(10)
circulo$calcularArea()