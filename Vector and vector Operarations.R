#Vectors is a sequence of elements that are of the same type

# They include(double, character, logical, integer)


vec<-c(1, 2, 3)
vic<-c(11, 12, 13)

vec + vic

vec -vic


vec/vic


vec * vic

#Math opwerations

mean(vic)

sd(vec)


max(vec)


min(vic)

#Vector recycling
weight=c(71, 67, 83, 67)
height <- c(1.75, 1.81, 1.78, 1.82, 1.97, 2.12, 1.75)
height =c(bmi <- weight/height^2
height


weight 



#Attributes of a vector
#Names
Age <-c(23, 26, 24, 26)

attributes(Age)

names()
names(Age) <- c("Lindah", "Mercy","Wilfred", "Dancan")


Age


attributes(Age)


#Assign null to remove  attributes



employee_names  <- c("Belinda Johnes","Maria Delar", "Math Smith", "Matt Williams", "Robert Mathews",
                     "Julia Walters", "Andrea Cheng", "July Horitz", "Danielle Muller", "Esteban Lugo")

salary <- c(3000, NA, NA, NA, NA, 4000, 3000, 5000, 1000, 5000)



names(salary) <- employee_names 
attributes(salary)
names(salary)


salary 




#Slicing and indexing vectors in R-indexing and slicing helps in selecting values from a vector

n.deck <-c(6, 7, 8, 9, 10)

deck <- c("Duke","Assasin","Captain","Ambassador","Contessa")


#selecting value from an object


deck[4]  #indexing
  
deck[-4]  
  
deck[c(1,3,5)]

names(n.deck)<-deck

n.deck

n.deck["Contessa"]


#Slicing-selecting several consecutive values at once

n.deck[3:5]

lv <-seq(10, 100, by = 10)
lv

lv[-(4:7)]


lv[lv>30]

salary

salary[6]
salary[-2]
salary[c(1, 3, 5, 7, 9)]


salary[seq(1,9,2)]
  
salary[salary>2000]



s <- seq(from = 2, to = 30, by = 2)
s

dim(s) <-c(3,5)
s
