## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#makeCacheMatrix stocke en mémoire et restitue 
# l'inverse d'une matrice 
makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL # variable pointant ssur la matrice inverse
  
  get <- function () {
    x
  }
  
  set <- function (mat) {
    m <<- NULL
    x <<- mat
  }
  
  getinv <- function() {
    m
  }
  
  setinv <- function(mat) {
    m <<- mat
  }
  
  list(get = get
       , set = set
       , getinv = getinv
       , setinv = setinv
       )
  
}


## Write a short comment describing this function
# cacheSolve verifie si l'inverse a déjà été calculé.
# si l'inverse n'est pas renseigné, la fonction relance le calcul.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}
