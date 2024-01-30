## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##makeCacheMatrix will create a special matrix object that caches its inverse for the input
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) inv <<- inverse
        getinv <- function() inv
        list(set = set, get = get, setinv = setinv, getinv = getinv)
}

## Write a short comment describing this function
##The below function cacheSolve will compute the inverse of the matrix returned by the makeCacheMtrix 
##function above. And if the inverse has already beem computed, then the cavheSolve function will retrieve 
##the inverse from the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if(!is.nu;;(inv)) {
                message("cached result")
                return(inv)
                inv
}

m<-matrix(rnorm(16), 4, 4)
m1<-makeCasheMatrix(m)
cacheSolve(m1)
