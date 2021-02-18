## These functions aim to cache the inverse of the given matrix.

## This function creates a special matrix that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        in <- NULL
      set <- function(y) {
              x <<- y
              in <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) in <<- inverse
        getinverse <- function() in
        list (set = set, get = get,
              setinverse = setinverse,
              getinverse = getinverse)
}

## This function will cache the inverse of the special matrix or retrieve the inverse 
## if it has already been calculated.

cacheSolve <- function(x, ...) {
        in <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(in)
                }
        data <- x$get()
        in <- solve(data, ...)
        x$setinverse(in)
        in
}
