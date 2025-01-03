#Data types in R
bob<-7

a<-1:10


is.vector(a)
is.vector(bob)


int<-c(5,6,7,8)
int<-c(5L,6L,7L,8L)

#checking for the data types

typeof(int)

#listing all objects
ls()

#Characters and logical data
# characters- store text data

char<-"lindah"
typeof(char)


employee_names <- c("Belinda Johnes","Maria Delar", "Math Smith", "Matt Williams", "Robert Mathews",
                    "Julia Walters", "Andrea Cheng", "July Horitz", "Danielle Muller", "Esteban Lugo")
typeof(employee_names)


salary <- c(3000, NA, NA, NA, NA, 4000, 3000, 5000, 1000, 5000)
typeof(salary)


employees <- c(employee_names, salary)


typeof(employees)
#Logical vectors-store Boolean data (TRUE, FALSE values)

spock <-c(FALSE, TRUE, F, F, T)
typeof(spock)


#R coercion vectors
Lindah<-c("Lindah",56)

typeof(Lindah)

#Coercion rules - if a vector has even one string element , all other elements will be converted to strings
#This is just a rule in R programming


#And logical values are converted to zeros and ones

Odeo = c(TRUE, FALSE, F, T, 1, 0, 1)
typeof(Odeo)
print(Odeo)

yearly_bonus <-c(T,T,T,F,T,T,T,T,T,T)
employees <- c(employees, yearly_bonus)

typeof(employees)
print(employees)


# every value is printed in quotes which means everything has been converted into a character string

coerce.check <- c(salary, yearly_bonus)
coerce.check
