## Put comments here that give an overall description of what your
## functions do
## Below is a pair of functions that cache the inverse of a matrix.

## Write a short comment describing this function
## makeCacheMatrix creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(solve) inv <<- solve
        getinv <- function() inv
        list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
## cacheSolve computes the inverse of the special "matrix" in makeCacheMatrix.
## If the inverse already exists, then the function will retrieve the inverse from the cache
cacheSolve <- function (x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if (!is.null(inv)) {
                message ("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinv(inv)
        inv
}