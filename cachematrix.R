## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#makeCacheMatrix stocke en mémoire et restitue 
# l'inverse d'une matrice 
makeCacheMatrix <- function(x = matrix()) {
  
  inverse <- NULL # variable pointant ssur la matrice inverse
  
  get <- function () {
    x
  }
  
  set <- function (mat) {
    inverse <<- NULL
    x <<- mat
  }
  
  getinv <- function() {
    inverse
  }
  
  setinv <- function(mat) {
    inverse <<- mat
  }
  
  list(get = get
       , set = set
       , getinv = getinv
       , setinv = setinv
       )
  
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
