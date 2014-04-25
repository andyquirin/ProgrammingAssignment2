makeCacheMatrix <- function(x=matrix()) 
{  
  ##Set Inverse to Null
  inverse <- NULL
  
  ##Overrides Matrix x
  set <- function(y)
  {
    x <<- y
    inverse <<-NULL
  }
  
  ##Retrieves Matrix x
  get <- function() 
  {
    x
  }
  
  ##Stores Matrix Inverse into Variable Inverse
  setInverse <- function(z)
  {
    inverse <<- z
  }
  
  ##Returns the inverse
  getInverse <- function()
  {
    inverse
  }
  
  ##Returns the list of functions
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}