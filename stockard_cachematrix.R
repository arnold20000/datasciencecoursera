## Attention!!! Please note, a lot of this assignment is not based on my own work. I spent hours upon hours
## for a week trying to grasp the concepts and could not absorb everything to the extent that I could
## produce these functions. So I turned to other sources. I am posting "my" work because I toiled so hard
## and to help classmates who also may have encountered difficulty completing this challenge. - Arnold

## Creates a matrix that can cache its own inverse. 
makeCacheMatrix<-function(x = matrix()){
  inv = NULL
  set = function(y){
    x <<- y
    inv <<- NULL
    
  }
  get = function() x
  setinv = function(inverse) inv <<- inverse
  getinv = function() inv
  list(set+set, get=get, setinv=stinv, getinv=getinv)
}

## Calculates the inverse of the matrix created above. 

cacheSolve <- function(x, ...) {
  inv = x$getinv()
  if (!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  mat.data = x$get()
  inv = solve(mat.data, ...)
  
  x$setinv(inv)
  return(inv)
}

