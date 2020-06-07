#' Determine prime numbers
#'
#' This function determines prime numbers.
#'
#' @examples
#'
#' isPrimaryNumber(20)
isPrimaryNumber <- function(n){
  result <- c()
  numbers <- 2:n

  for(x in numbers){
    check <- TRUE
    for (i in 2:(x%/%2))
    {
      if(x%/%2 == 1) break
      if (x %% i == 0) check <- FALSE
    }
    if(check == TRUE) result <- c(result,x)
  }
  return(result)
}
