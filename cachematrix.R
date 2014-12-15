## The purpose of these functions is to create and print the inverse of a matrix 
## avoiding potentially time-consuming computations, 
## the inverse it's storaged in the cache memory since the moment the matrix is created and then,
## a second function check if there is an inverse previously calculated in order to get it, 
## if not, it will calculate the inverse and then print it.

makeCacheMatrix <- function(x = matrix()) {
        #This function, creates a "vector", which is really a list containing a function to
        #set the matrix
        #get the value of the matrix
        #set the value of the inverse of the matrix
        #get the inverse og the matrix
      m<-NULL
      set<-function(y){
            x<<-y
            m<<-NULL
      }
      get<-function() {x}
      setmatrix<-function(solve) m<<- solve
      getmatrix<-function() {m}
      list(set=set, get=get,
           setmatrix=setmatrix,
           getmatrix=getmatrix)
}

        
cacheSolve <- function(x=matrix(), ...) {
        ## This function print the inverse of a matrix
        ## It first checks if the calculation is already stored in the cache memory
        ## If not, it does the calculation and then prints the result.
      m<-x$getmatrix()
      if(!is.null(m)){
            message("getting cached data")
            return(m)
      }
      data<-x$get()
      m<-solve(data, ...)
      x$setmatrix(m)
      m
}
