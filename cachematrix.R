
## makeCacheMatrix creates and returns a list of functions
## used by cacheSolve to get or set the inverted matrix in cache
makeCacheMatrix <- function(x = matrix()) {
    # stores the cached value
    # initialize to NULL
    cache <- NULL
    
    # create the matrix in the working environment
    set <- function(y) {
        x <<- y
        cache <<- NULL
    }
    
    # get the value of the matrix
    get <- function() x
    # invert the matrix and store in cache
    setMatrix <- function(inverse) cache <<- inverse
    # get the inverted matrix from cache
    getInverse <- function() cache
    
    # return the created functions to the working environment
    list(set = set, get = get,
         setMatrix = setMatrix,
         getInverse = getInverse)
}
