## Put comments here that give an overall description of what your
## Two functions caching the inverse of a matrix

## Matrix that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
 inverse <- NULL
 set <- function(y){
   x <<-y
   inverse  <<-NULL
 }
 get <- function() x
 setInv <- function(solveMatrix) inv <<- solveMatrix
 getInv <-function()inverse
 list(set=set,get=get,setInv=setInv,getInv=getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
          ## Return a matrix that is the inverse of 'x'
        inverse <- x$getInverse()
        if(!is.null(inv)) {
          msg("get cached data")
          return(inverse)
        }
        data <- x$get()
        inverse <- solve(data)
        x$setInv(inverse)
        inverse
  }
