#Relational/Comparison operators
3==3
3==2

#Not equal to(!=)
"Lindah"=="Car"

3!=3
"Lindah"!="Car"

#greater than and less than
17>1
17<5


#Logical operators
# Explain the difference between | , || , & and &&


# Answer:
# Single operators (|, &) can return a vector


((-2:2) >= 0) & ((-2:2) <= 0)
# FALSE FALSE  TRUE FALSE FALSE


# Double operators (||, &&) return a single value
((-2:2) >= 0) && ((-2:2) <= 0)
# FALSE

#if else 

# What are the components of an if-else statement? Define the syntax.




if(condition_expression){
  statementA
} else {
  statementB
}


# Write a statement that prints "Rotten!" if the input is equal to or larger than 1 and less than 60,
# "Fresh" if the input is equal to or larger than 60 and less than 75,
# and "Certified Fresh!" if the input is equal to or larger than 75.
# For any other value, the statement should print "Please input a number between 1 and 100"

x <- 101

if((x >= 1) & (x < 60)){
  print("Average")
} else if((x >= 60) & (x < 75)){
  print("Above Average")
} else if((x >= 75) & (x <= 100)){
  print("Excellent")
} else {
  print("Please input a number between 1 and 100")
}

########## Bonus exercise: ##########

# Imagine the following: Your mother announced yesteday that she's going to win the lottery. She did it with the casual
# nonchalance of a person who's going to the shop to pick up some pasta. Today is the number draw. 
# If she gets 6 numbers correct, she wins the lottery. If she doesn't get 6 numbers correct, she will sit staring 
# at the screen wondering how on earth she did not manage to achive this very simple task.

# Write a statement that will print "Mom wins the lottery!" if the six numbers she guessed matched the lottery numbers,
# and "Mom did not win the lottery." if the numbers do not match.

# Hint: it will be best if you create one object with randomly generated numbers, and another object which you populate
# manually (as if you're playing the lottery), and compare the two. 

# Hint: look into the length() and setdiff() functions 

########## SOLUTION ##########

# Create a vector containing the numbers that mom chose for the lottery (any numbers)

myinputs <- c(4,5,9,15,18,22) 

# Create a vector that stores the lottery results: use sample() to generate 6 random 
# numbers between 1 and 49, without replacement

lottery <- sample(1:49,6,replace=F)

# If mom guessed the lottery numbers, the myinputs and lottery vectors will be the same
# One way to confirm that they are the same, is to subtract one vector from the other.
# If the result is zero, then the two vectors are identical, and mom guessed the lotttery.

# You can use the setdiff() function to check this.
# Setdif() returns a vector with the difference between two vectors.
# In this case we need the difference between the lottery numbers and what mom picked.

# The length() function gets the SIZE of a vector. 
# So, if mom guessed all numbers, then setdiff() would be empty.
# If setdiff() is empty, the length() function would return zero.

wrongGuesses <- length(setdiff(lottery, myinputs)) 

# Then you just need to create the if statement.
# It should check if the length function returned zero, and if it did, mom won the lottery

if(wrongGuesses == 0){
  print("Mom won the lottery!")
} else {
  print("Mom did not win the lottery.")
}


#loops(while for repeat)
# Write a for loop that sums all the numbers from 1 to n 


n <- 10
sum <- 0


for(i in 1:n){
  sum <- sum + i
  print(sum)
} 

# Write a while loop that sums all the numbers from 1 to n 


n <- 10
i <- 1
sum <- 0


while(i <= n){
  sum <- sum + i
  i <- i + 1
  print(sum)
}







# What are the principles that determine how R looks up values?


# Answer: 
# If a name isn't defined in the function environment, R will look one level up. 
# If it is, even if there is an element with this name outside of the function, R will not use its value.




# What does this function return? Try to make a prediction before you run it.
# Try to explain why that is.


f <- function(x) {
  f <- function(x) {
    f <- function(x) {
      x ^ 2
    }
    f(x) + 1
  }
  f(x) * 2
}


f(10)


# Answer:
# If a function is defined inside another function, R looks inside the current function for a value, 
# then where that function was defined, and so on, all the way up to the global environment. 







