## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    # this is the inverse object, the rest of the code is mostly similar
    # to that given in the assignment
    inv <- NULL
    set <- function(y){
        x <<- y
    }
    get <- function() x 
    setInv <- function(inverse) inv <<- inverse
    getInv <- function() inv 
    list(set = set, get = get, setInv = setInv, getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## looks to see if the inverse was found
        ## if not, it solves the matrix and sets it
        ## the program assumes x is invertible
    inv <- x$getInv()
    if(!is.null(inv)){
        message("getting cached data")
        return(inv)
    }
    matrix <- x$get()
    inv <- solve(matrix)
    x$setInv(inv)
    inv
    
}
