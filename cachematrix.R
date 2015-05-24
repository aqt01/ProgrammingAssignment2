## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# This function creates a list containing a function to:
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of the inverse
# 4. get the value of the inverse# This function creates a 

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y)  {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) i <<- solve
    getinverse <- function() i
    list(set = set, get=get, setinverse = setinverse, getinverse = getinverse)
    
}




## Write a short comment describing this function

# This function  resolves the inverse matrix of a cached 
cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if (!is.null(i)) {
        message('getting cached data')
        return(i)
    }
    data <- x$get()
    i <- solve(data,...)
    x$setinverse(i)
    i
        ## Return a matrix that is the inverse of 'x'
}
