## Put comments here that give an overall description of what your
## functions do

## The function makeCacheMatrix creates a list of three functions. In the eviroment of the function
## there are two variables: "y" that stores the input matrix and "i" that stores the inverse
## after it's calculated. The first function of the list "get" returns the matrix. The second
## function "setinverse" sets the value of the variable "i" in the makeCacheMatix enviroment.
## The final function "getinverse" returns the value of the variable "i".
## 
## The function chacheSolve takes "CacheMartix" as an input. It firt checks to see if the inverse
## had already been calculated. It that's the case, it returns the inverse. Otherwise, it first
## calculates the inverse and then return it.

## Write a short comment describing this function

## makeCacheMatrix take as input a matrix and creates a list as described above.

makeCacheMatrix <- function(x = matrix()) {
     i <- NULL
     y <- x
     get <- function() y
     setinverse <- function(inverse) i <<- inverse
     getinverse <- function() i
     list(get = get,
          setinverse = setinverse,
          getinverse = getinverse)
}


## Write a short comment describing this function

## cacheSolve take as input a list created by makeCacheMatrix and returns a matrix that is the inverse of 'x'

cacheSolve <- function(x,...) {
     
     
     
     i <- x$getinverse()
     if(!is.null(i)) {
          return(i)
     }
     data <- x$get()
     i <- solve(data,...)
     x$setinverse(i)
     i
}