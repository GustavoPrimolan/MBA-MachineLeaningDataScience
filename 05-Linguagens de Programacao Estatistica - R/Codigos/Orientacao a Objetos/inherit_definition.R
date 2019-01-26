library(R6)

SumOperation <- R6Class("SumOperation",
                        public = list(
                          a = NULL,
                          b = NULL,
                          
                          initialize = function(a = NA, b = NA) {
                            self$a <- a
                            self$b <- b
                          },
                          
                          set_a = function(a) {
                            self$a <- a
                          },
                          set_b = function(b) {
                            self$b <- b
                          },
                          
                          sum = function() {
                            return(self$a + self$b)
                          }
                          
                        )
)

Calculator <- R6Class("Calculator",
                      inherit = SumOperation
                      public = list(
                        initialize = function(a = NA, b = NA) {
                          super$initialize(a,b)
                        }
                      )
)



calc <- Calculator$new(10, 20)
calc$sum()