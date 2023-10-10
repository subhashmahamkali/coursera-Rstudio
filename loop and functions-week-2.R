#week-2, programming with R studio.
#looping statements

#if else statements on R.
#how they work with an example.
#here in the if and else statement 
#if x is greater than 3 then y-output will be 10
#if not then y will be o
if(x > 3) { 
  y = 10
} else {
  y = 0
} 

#for loop satatement and example
#used to iterate over the code.
#here X is defined with a,b,c,d and we are looping over i from 1-4
#to print ith element of x
x = c("a", "b", "c", "d") 
for(i in 1:4) { 
  print(x[i])
} 

#while loop, it test the condition, 
#if it is true then execute the loop over the body,
#here we initalized count = 0
#then in while loop we are saying that until count is less than 10
#Within the loop, it prints the current value of count 
#and then increases count by 1.
count = 0 
while(count < 10) {
  print(count)  
  count = count + 1
}

#defining functions.

#here we are defining a function add2
#if we later use add2 function with some numbers as x and y
#they will get addedd and print will give that result 
#as example subhash here
add2 = function(x, y){
  x+y
}
subhash = add2(7, 2)
print(subhash)

#simillarly we are defining some other function.
#above 10 function is greter than 10 
#if any value is >10 then it prints that value.
above10 = function(x) {
  use = x > 10
  x[use]
}
numbers = c(5, 12, 15, 9, 3, 11)
result = above10(numbers)
print(result)  # This will output 12, 15, and 11

#another function defining above
#saying if it to print the values > x of n.
above = function(x, n){
  use = x > n
  x[use]
}
x = 1:20 # we defined x here as example.
above(x, 12)

#function taking matrix and using for loop.
columnmean = function(y){
  nc = ncol(y)#calculate number of columns
  means = numeric(nc)#calculating mean of each column.
  for (i in 1:nc) {means[i] = mean(y[, i])
  #for loop through the columns
  #starts with 1 and ends with number of columns
  #finally calculating means of i column in y number of total columns.
    
  }
  means
}
columnmean(airquality)
# using airquality dataset inbuilt in R 
#to calculate means using our function.

#calculating standard deviation
mydata <- rnorm(100) # choosing the data of random variables
sd(mydata)#calculating STDEV 
sd(x = mydata)#same function by assinging X
sd(x = mydata, na.rm = FALSE)#NA.rm to remove missing values
sd(na.rm = FALSE, x = mydata)#similar function with diff order.
sd(na.rm = FALSE, mydata)

#lexical scoping
make.power <- function(n) {#here it is the outer function of n argument
  pow <- function(x) {#pow is the inner function for x
    x^n#computed value
  }
  pow
}



