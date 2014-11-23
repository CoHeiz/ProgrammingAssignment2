makeCacheMatrix <- function(x = matrix()) {
        m<-NULL                 ## initialize inverse
        set<-function(y) {      ## set matrix
        x<<-y                   ## assign input matrix y to variable x
        m<<-NULL
        }
get<-function()m                ## get the matrix

setInverse <- function(inverse)m<<-inverse ## 
        
getInverse<-function()m         ## get the cached inverse

list(set=set, get=get, 
        setInverse=setInverse, 
        getInverse=getInverse)  ##list of methods
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        m<-x$getInverse()
        if(!is.null(m)){message "getting cached data") 
        return m                ## return inverse if this was already set
        }
        data<-x$get()           ## get the matrix
        m<-solve(data,...)      ## calculate inverse
        x$setInverse(m)         ## set the inverse        
        m                       ## commands to return the matrix
 }
        
        
        

