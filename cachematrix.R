## I have created a function makeCachematrix which would read and store my matrix details
## Set function is used to set the values, get for getting the output, setinverse for setting an inverse function and getinverse for getting those values

## makeCache Matrix - Code is written to set and get values. Inverse function is also called here

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
set <- function(y) {
x <<- y
inverse <<- NULL
}
get <- function() x
setinverse <- function(inverse) inverse <<- inverse
getinverse <- function() inverse
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Solution to get an inverse for the above called values is written here 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getinverse()
if(!is.null(inverse)) {
message("getting cached result")
return(inverse)
}
data <- x$get()
inverse <- solve(data, ...)
x$setinverse(inverse)
inverse
}
