## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
input <- NULL
  set <- function(y){
    x <<- y
    input <<- NULL
  }
  get <- function() {x}
  setInput <- function(inputed) {input <<- inputed}
  getInput <- function() {input}
  list(set = set, get = get, setInput = setInput, getInput = getInput)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
input <- x$getInput()
  if (!is.null(input)){
    message("getting cached info")
    return (input)
  }
  mtrx <- x$get()
  input <- solve (mtrx, ...)
  x$setInput(input)
  input
}
