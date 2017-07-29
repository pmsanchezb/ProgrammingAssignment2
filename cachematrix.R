## Put comments here that give an overall description of what your
## functions do

# Compute cached inverse
## Write a short comment describing this function
# Creates a special matrix which is a list

makeCacheMatrix <- function(x = matrix()){
        m <- NULL
        set <- function(y){
              x <<- y
              m <<- NULL
        }
       get <- function() x
       setMatrix <- function(solve) m <<- solve
       getMatrix <- function() m
       list(set = set, get = get,
       setMatrix = setMatrix,
       getMatrix = getMatrix)
}


## Write a short comment describing this function
# Calculates the inverse of a matrix. First checks
# to see if the inverse has been already calculated.

cacheSolve <- function(x, ...){
        m <- x$getMatrix()
        if(!is.null(m)){
                message("getting cached matrix")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setMatrix(m)
}
