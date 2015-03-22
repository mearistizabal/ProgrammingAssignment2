# First I have to say I don't feel very proud of this assignment as it was hard for me to
#understand details of the working function. I had to "paraphrase" the sample and use much external
#help. That said, let's go to the function!.
#This function Sets a Gets the value of the matrix, and makes it available from cache in order 
#to avoid to make this costly action repetitive.

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}

#This function checks if the solved matrix is in caché and retuns it. Otherwise solves it.

cacheSolve <- function(x=matrix(), ...) {
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}