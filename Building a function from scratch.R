#------BUILDING A FUNCTION------

deck <- c("Duke", "Assasin", "Captain","Ambassador","Contessa")
print(deck)


sample(deck, size =3)
sample(deck, size =3)
sample(deck, size =3)

sample(deck, size =3, replace = FALSE)

#This gives same sample of cards drawn
Hand= sample(deck, size =3, replace = T)
Hand

#Sample three decks every time we sample
#The objective here is:
# create a deck every time
# sample 3 cards from it
# allow repetition
draw <- function(){
  deck <- c("Duke", "Assasin", "Captain","Ambassador","Contessa")
  Hand= sample(deck, size =3, replace = T)
  print(Hand)
  
 }

draw()




flip_coin <- function(n = 100) {
  # Simulate flipping a coin 'n' times
  results <- sample(c("Heads", "Tails"), size = n, replace = TRUE)
  
  # Print the results
  print(results)
 
}

flip_coin()




flip <- function(){
  coin <- c("heads", "tails")
  toss <- sample(coin, 100, replace = TRUE, prob = c(0.3, 0.7))
  return(toss)
}


flip()


# The return() statement is the more conventional way of defining what a function's output should be
# In this case, print() works just as well as return() because this is a simple function
