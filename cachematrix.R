## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {      ## function accepting parameter of matrix type
##This function creates a matrix object that can cache its inverse
        m <- NULL                                ## assign intial value NULL to m  
        set <- function(y) {                     ##define function to reset variable to NULL 
                x <<- y
                m <<- NULL
        }
        get <- function() x                      ##to get matrix
        setMatrix <- function(mean) m <<- mean   ## to set inverse value 
        getMatrix <- function() m                ##to get value of m
        list(set = set, get = get,               ##need for referring functions
             setMatrix = setMatrix,
             getMatrix = getMatrix)

}


## Write a short comment describing this function
##This function returns inverse of matrix
##If inverse is calculated it will return the inverse cached value 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	  m <- x$getMatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setMatrix(m)
        m

}
