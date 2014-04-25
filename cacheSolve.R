cacheSolve <- function(x)
{
  ##Calls getInverse from makeCacheMatrix and stores inverse in m
  m <- x$getInverse()
  
  ##If m successfully retrieved the value, it returns the cahced inverse m
  if(!is.null(m))
  {
    message("getting cached data")
    return(m)
  }

  ##Else, it solves and caches the inverse
  temp <- x$get()
  m <- solve(temp)
  x$setInverse(m)
   
  ##Return m
  m
}