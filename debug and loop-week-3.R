#Week03 loop and debug functions.
#lapply function
#here we listed x as a is 1to 5 number 
#b is random variables of 10
#using lapply here we are calculating means of all the values in X(list)
x <- list(a = 1:5, b = rnorm(10))#example of lapply
lapply(x, mean)#calculate mean in each element of x

#another example of lapply loop
x = 1:4 #defing x with variables from 1 to 4
lapply(x, runif)#loops over each elements of X
#runif function generates random numbers between 0 to 1
#runif generates those many numbers of x elements.

#sapply - simplify the result of lapply.
x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
lapply(x, mean) #diff between lapply and sapply
sapply(x, mean)#sapply simplify the result of lapply with line of output

#apply - loop function especially for matrx
x <- matrix(rnorm(200), 20, 10) # created matrix with random variables
#20 rows and 10 columns
apply(x, 2, mean)#here we used apply to calculate the mean 
#we used margin 2 here to calulate mean of 10 columns.
#loop over each column.
apply(x, 1, mean)
#here we calculate mean of margin-1 rows.
#apply fucntion will loop over 20 columns to calculate mean.
#we can also use rowmeans insted of apply.

#another example for apply.
x <- matrix(rnorm(200), 20, 10)
#creating matrix of random variables with 20 rows and 10 columns.
apply(x, 1, quantile, probs = c(0.25, 0.75))
#apply function loops over matrix
#calculates 1st and 3rd quartile of 1=rows.

#mapply
#here noise is pre defined function with random normal variables.
noise <- function(n, mean, sd) {
  rnorm(n, mean, sd)
  }
mapply(noise, 1:5, 1:5, 2)
#mapply will loop over with noise fucntion
#with n from 1 to 5 and mean also 1 to 5 and STDEV-2
#genrate 1 to 5 random numbers for this.

#debugging in R.
#traceback tells most recent error and where it happend
mean(k)
traceback()


