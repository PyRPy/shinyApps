# how to use switch()
# ref: https://stackoverflow.com/questions/10393508/how-to-use-the-switch-statement-in-r-functions

# by index
switch(1, "one", "two")

# index + complex expressions
switch(2, {"one"}, {"two"})

# index + complex named expression
switch(1, foo={"one"}, bar={"two"})

# name + complex named expression
switch("bar", foo={"one"}, bar={"two"})

# inside a function
funSelect <- function(df, do.this){
  switch(do.this,
         T1 = {
           X <- t(df)
           P <- colSums(df)%*%X
         },
         T2 = {
           X <- colMeans(df)
           P <- outer(X, X)
         },
         
         stop("enter sth that switches me !")
         )
         return(P)
}

funSelect(mtcars, "T1")
funSelect(mtcars, "T2")
funSelect(mtcars, "T3")