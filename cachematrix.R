## makeCacheMatrix: Creates a special "matrix" object that can cache its inverse.
## cacheSolve: Computes the inverse of the special "matrix" returned by makeCacheMatrix above.


## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

## The first function, makeVector creates a special "matrix", which is really a list containing a function to
## set the value of the matrix
## get the value of the matrix
##set the value of the inverse matrix 
## get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setslove <- function(slove) s <<- slove
  getslove <- function() s
  list(set = set, get = get,
       setslove = setslove,
       getslove = getslove)

}



## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

## The following function calculates the inverse matrix of the special "matrix" created with the above function. 
## However, it first checks to see if the inverse matrix has already been calculated. 
## If so, it gets the inverse matrix from the cache and skips the computation. 
## Otherwise, it calculates the inverse matrix of the data and sets the value of the inverse matrix in the cache via the setslove function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getslove()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- slove(data, ...)
  x$setslove(s)
  s
  
  
}
