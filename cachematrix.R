## Added something here

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        invmatr = NULL
        set = function(y) {
                x <<- y
                invmatr <<- NULL
        }
        get = function() x
        setinverse <- function(inverse) invmatr <<- inverse
        getinverse <- function() invmatr
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
cacheSolve <- function(x, ...) {
        invmatr = x$getinverse()
        if(!is.null(invmatr)) {
                message("getting cached data")
                return(invmatr)
        }
        data = x$get()
        invmatr = solve(data, ...)
        x$setinverse(invmatr)
        return(invmatr)
}
        ## Return a matrix that is the inverse of 'x'

