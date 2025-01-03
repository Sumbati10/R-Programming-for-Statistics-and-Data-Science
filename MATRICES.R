#Creating the matrix
#(2 dimensional arrays, have fixed number of rows and columns)
#Can contain same data types

mtrx = matrix(1:12, nrow =3)
mtrx

mtrx2 = matrix(1:12, nrow =4)
mtrx2


mtrx2 = matrix(1:12, ncol =4, byrow=TRUE)
mtrx2


#We can also create matrix using cbind (column bind and rbind for rowbind)

usa <-c(1.2, 1.4, 1.5, 1.7, 1.9)
usa

deb <-c(0.2, 0.7, 0.3, 0.9, 0.1)
deb



ngo <- cbind(usa, deb)
ngo

#naming ROWS(we use colnames() and rownames() functions)

rownames(ngo) <-c("2013","2014","2015","2016","2017")
ngo


#Transposing

ngo <-t(ngo)
ngo


ind <- c(2.0, 3.3, 4.2, 1.9, 4.2)
ngo <- rbind(ngo, ind)
ngo


player <- c(rep("dark", 5), rep("light", 5))
player


# the rep() function repeats a value the stated number of times

piece <- c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")
piece



chess <- c(player, piece)
chess


dim(chess) <- c(10, 2)
colnames(chess) <- c("Player", "Piece")
chess.mat <- matrix(chess, nrow = 10, dimnames = list(NULL, c("Player", "Piece"))) 


# byrow = FALSE is the default value which is what we need here
# because we've defined nrow = 10, R will infer that ncol = 2
# setting the first argument of dimnames to NULL tells R we won't be setting row names




chess.bind <- cbind("Player" = player, "Piece" = piece)
chess.bind



#indexing a matrix

gross <-c(1:100)
gross


hp.mat <-matrix(gross, nrow =5, byrow =T)
hp.mat



hp.mat[4,20]
hp.mat[9]


hp.mat[4, ]


hp.mat[, 4]


#Selecting multiple elements
hp.mat[c(1, 3, 5), ]



#Matrix arithmetic
my.mat <- matrix(rmy.mat <- matrix(runif(12), nrow = 3, byrow = TRUE, dimnames = list(c("x", "y", "z"),
                                                                    c("uno", "dos", "tres", "cuatro")))
my.mat <- my.mat*10
s.mat <- my.mat[1:2, ]


my.mat - s.mat


m.mat <- my.mat[ , -4]


my.mat - m.mat


uno <- my.mat[, "uno"]


my.mat - uno


# you can only do matrix operations with two matrices when they are of the same size
# R's recycling rules apply when you try to do an operation with a matrix and a vector


new.mat <- matrix(rnorm(12), nrow = 3, byrow = TRUE)
my.mat * new.mat


#### my.mat ####


#       uno      dos     tres   cuatro
# x 8.706670 4.685807 3.334491 8.639755
# y 9.774909 3.976767 2.970817 5.511657
# z 3.310194 5.695044 4.817533 3.456972


#### new.mat ####


#           [,1]       [,2]       [,3]       [,4]
# [1,] -1.5695645 -0.3105366 -0.4700605 -0.5500765
# [2,]  0.4982614  1.7446698  0.8613690  0.5359502
# [3,] -0.8992205 -1.2731801 -1.1282080 -0.8967721


#### my.mat * new.mat ####


#       uno       dos      tres    cuatro
# x -13.665680 -1.455114 -1.567412 -4.752526        # filled out element-by-element
# y   4.870460  6.938146  2.558970  2.953974
# z  -2.976594 -7.250817 -5.435180 -3.100116


my.mat %*% t(new.mat) 


#       [,1]     [,2]      [,3]
# x -21.44073 20.01609 -25.30498
# y -21.00558 17.32155 -22.14734                    # do not forget to transpose with t()
# z -11.13021 17.58775 -18.76271
unif(12), nrow = 3, byrow = TRUE, dimnames = list(c("x", "y", "z"),
                                                                    c("uno", "dos", "tres", "cuatro")))
my.mat <- my.mat*10
s.mat <- my.mat[1:2, ]


my.mat - s.mat


m.mat <- my.mat[ , -4]


my.mat - m.mat


uno <- my.mat[, "uno"]


my.mat - uno


# you can only do matrix operations with two matrices when they are of the same size
# R's recycling rules apply when you try to do an operation with a matrix and a vector


new.mat <- matrix(rnorm(12), nrow = 3, byrow = TRUE)
my.mat * new.mat


#### my.mat ####


#       uno      dos     tres   cuatro
# x 8.706670 4.685807 3.334491 8.639755
# y 9.774909 3.976767 2.970817 5.511657
# z 3.310194 5.695044 4.817533 3.456972


#### new.mat ####


#           [,1]       [,2]       [,3]       [,4]
# [1,] -1.5695645 -0.3105366 -0.4700605 -0.5500765
# [2,]  0.4982614  1.7446698  0.8613690  0.5359502
# [3,] -0.8992205 -1.2731801 -1.1282080 -0.8967721


#### my.mat * new.mat ####


#       uno       dos      tres    cuatro
# x -13.665680 -1.455114 -1.567412 -4.752526        # filled out element-by-element
# y   4.870460  6.938146  2.558970  2.953974
# z  -2.976594 -7.250817 -5.435180 -3.100116


my.mat %*% t(new.mat) 


#       [,1]     [,2]      [,3]
# x -21.44073 20.01609 -25.30498
# y -21.00558 17.32155 -22.14734                    # do not forget to transpose with t()
# z -11.13021 17.58775 -18.76271







n <- matrix(rnorm(25), nrow = 5, byrow = TRUE)
u <- matrix(runif(25), nrow = 5, byrow = TRUE)


avg.n <- colMeans(n)
avg.u <- colMeans(u)


total.n <- colSums(n)
total.u <- colSums(u)


n.avg.total <- rbind(n, avg.n, total.n)
u.avg.total <- rbind(u, avg.u, total.u)


r.avg.n <- rowMeans(n.avg.total)
r.avg.u <- rowMeans(u.avg.total)


r.total.n <- rowSums(n.avg.total)
r.total.u <- rowSums(u.avg.total)


n.avg.total <- cbind(n.avg.total, r.avg.n, r.total.n)
u.avg.total <- cbind(u.avg.total, r.avg.u, r.total.u)




min(n)
min(u)


max(n)
max(u)


min(n[, 3])
min(u[, 3])


max(n[, 3])
max(u[, 3])


mean(n)
mean(u)


sd(n)
sd(u)


# the data generated with rnorm() will always have an sd close to 1, because this is how the function is defined to work
# rnorm() generates data with default settings mean = 0, standard deviation = 1 


# runif() generates data within the [0, 1] range


#Categorical variables


#factors in R

marital.status<-c("Married","Married","Single","Married","Divorced","Widowed","Divorced")
marital.status
marital.status <-factor(marital.status)
marital.status


#Creating lists in R
newList <- list(seq(1, 11, by = 2), list("Happy Birthday", "Archery"))
newList
str(newList)

# extract the numbers as a vector
newList[[1]]


# extract the phrase Happy Birthday as a vector
newList[[2]][[1]]



# extract the second item of the second list as a list
newList[[2]][2]


# extract the second list as a list
newList[2]
# extract the numbers item as a list
newList[1]



# add 2 to each element in the numbers item
newList[[1]] <- newList[[1]] + 2
newList[[1]]


# name the items in the list as "Numbers" and "Phrases"
names(newList) <- c("Numbers", "Phrases")
newList


# you can use the $ to extract named items of a list
# if you extract the numbers item from newList with the $, what other extraction method is this equivalent to?
newList$Numbers
newList[[1]]


# use the dollar sign to repeat the addition from above (add 2 to each element in the numbers list)
newList$Numbers <- newList$Numbers + 2
newList$Numbers


# add a new item called "Brands" to the list. It should contain the brands Kellogs, Nike, iPhone
# use either brackets or the dollar sign to do that
newList$Brands <- c("Kellogs", "Nike", "iPhone")
str(newList)
# or 
newList[[3]] <- c("Kellogs", "Nike", "iPhone")
names(newList)[[3]] <- "Brands"
newList


# remove the iPhone from the Brands item
newList[[3]] <- newList[[3]][-3]
# or
newList$Brands <- newList$Brands[-3]
newList


# remove the Brands item from the list
newList$Brands <- NULL
# or
newList[[3]] <- NULL
newList
