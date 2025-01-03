#Functions
#We  use functions to create objects
#object <-function()


#For example function.name(x), runs the function called function.name on the data x

round(2, 4271)
mean(1:10)

a<-c(100, 300, 400)
mean(a)


round(mean(a))


b=mean(a)
b<-mean(a)
 c <-round(b)

 print(b) 

 print(c) 

 
 
 years_of_experience=c(8, 10, 10, 1, 10, 10, 8, 12, 1, 12) 

 sum(years_of_experience) 
mean(years_of_experience) 
median(years_of_experience)
length(years_of_experience)
sd(years_of_experience)
round(sd(years_of_experience))


print(round(sd(years_of_experience)))



#Functions and arguments- functions can take more than one arguemnt
args(round)
function(x, digits= 0)

round(2.4771, digits=2)  


args(sample)
args(median)


median(na.rm = TRUE, x = years_of_experience)
median(years_of_experience)



