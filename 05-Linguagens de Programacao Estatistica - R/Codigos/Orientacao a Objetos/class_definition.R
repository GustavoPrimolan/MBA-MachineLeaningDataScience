library(R6)

Calculator <- R6Class("Calculator",
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

calc <- Calculator$new(10, 20)
calc$sum()