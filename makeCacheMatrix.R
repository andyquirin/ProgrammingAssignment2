makeCacheMatrix <- function(x=numeric(),n=numeric()) 
{  
  ##Creates Matrix x
  x <- matrix(x,n)
  inverse <- NULL
  
  ##Overrides Matrix x
  set <- function(y)
  {
    x <<- y
  }
  
  ##Retrieves Matrix x
  get <- function() 
  {
    x
  }
  
  ##Stores Matrix Inverse into Variable Inverse
  setInverse <- function(z)
  {
    inverse <<- solve(z)
  }
  
  ##Returns the inverse
  getInverse <- function()
  {
    inverse
  }
  
  ##Returns the list of functions
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}