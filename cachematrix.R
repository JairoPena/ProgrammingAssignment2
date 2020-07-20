#FIRST SET YOUR WORKING DIRECTORY

setwd('C:\Users\Jairo\Documents\Coursera\R Programming\ProgrammingAssignment2-master\ProgrammingAssignment2-master')

## We are finding easier ways to get the mean and the inverse of a vector from a matrix

##The First Function will find the inverse of a Matrix
## I changed the values to make it simple and easier to understand

CacheMatrix <- function(x = matrix()) {
  A <- NULL
  set <- function(y) {
    x <<- y
    A <<- NULL
  }
  getA <- function() x
  setAInverse <- function(inverse) A <<- mean
  getAInverse <- function() A
  list(set = set, get = get,
       setAInverse = setAInverse,
       getAInverse = getAInverse)
}


## This function will get the mean of the Inverse

CacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  A <- x$getAInverse()
  if(!is.null(A)){
    message("getting cached data")
    return(A)
  }
  mat <- x$get()
  A <- solve(mat,...)
  x$setAInverse(A)
  A
}
