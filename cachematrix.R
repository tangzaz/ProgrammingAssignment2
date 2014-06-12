## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  imatrix <- NULL
  set <- function(y){
    x <<- y
    imatrix <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) imatrix <<- inverse
  getinverse <- function() imatrix
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    imatrix <- x$getinverse()
    if(!is.null(imatrix)){
      message("getting cached data")
      return(imatrix)
    }
    matrix <- x$get()
    imatrix <- solve(matrix)
    x$setinverse(imatrix)
    imatrix
}
