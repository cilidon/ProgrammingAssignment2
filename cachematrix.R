## Put comments here that give an overall description of what your

# funtion to make the cache matrix

makeCacheMatrix <- function(x = matrix()) {
        cacheMatrix <- NULL
        
        setMatrix <- function(y) {
        x <<- y
        cacheMatrix <<- NULL
        }
        
        getMatrix <- function() x
        setCache <- function(inverse) cacheMatrix <<- inverse
        getCache <- function() cacheMatrix
}


# function to return the inverse of a given matrix using the cache

cacheSolve <- function(x, ...) {
        # Return a matrix that is the inverse of 'x'
        cacheMatrix <- x$getCache()
        
        if (!is.null(cacheMatrix)) {
        # returning the cache matrix
        return(cacheMatrix)
        }
        
        else {
        dMatrix <- x$getMatrix()
        cacheMatrix <- solve(dMatrix, ...)
        x$setCache(cacheMatrix)
        return(cacheMatrix)
        }
        
}
