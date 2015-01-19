## Put comments here that give an overall description of what your
## functions do
#The code works for square matrices that can be inversed.

## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix()) {
inverse_matrix <- NULL
  
  set <- function(y){
    x <<- y
    inverse_matrix <<- NULL
  }
get <- function(){x}
set_inverse <- function(inverse){inverse_matrix <<-inverse}
get_inverse <- function(){inverse_matrix}
  list (set= set, get=get, set_inverse=set_inverse, get_inverse = get_inverse)
}


## Write a short comment describing this function
# cacheSolve checks if the inverse is already chaced. If it isn't the inverse if the matrix is computed using solve function

cacheSolve <- function(x, ...) {
    
  inverse_matrix <- x$get_inverse()
  if(!is.null(inverse_matrix))
  {message("getting cached data")
  return(inverse_matrix)}
  
  data <- x$get()
  inverse_matrix <- solve(data)
  x$set_inverse(inverse_matrix)
  inverse_matrix
  
  
  ## Return a matrix that is the inverse of 'x'
}
