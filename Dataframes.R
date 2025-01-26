# Dataframes
# Just like and excel spreadsheet-lists
# creating dataframes(vector of diffrent leght)

title <- c("Star Wars", "The empire Strikes Back", "The return of Jedi")

year <- c(1977, 1999, 2000)
length.min <- c(121, 124, 154)
box.official.mil <- c(787, 534, 656)


mydata <- data.frame(title, year, length.min, box.official.mil)

mydata

name <- c("VolkswagenTouareg ", "CitroenC3", "AudiA3", "ToyotaYaris", "KiaForte", "DaciaLogan", "NissanPajero")
year <- c(2, 3, 4, 5, 8, 9, 8)
size <- c("medium", "small", "medium", "small", "small", "medium", "extra large")
mpg <- c(25, 47, 27, 36, 31, 2, 36)
geerbox <- c("manual", "manual", "auto", "auto", "manual", "manual", "auto")


cars <- data.frame(year, size, mpg, geerbox)
names(cars) <- c("Year", "Size", "MPG", "Geerbox")
rownames(cars) <- name


# alternative naming


cars <- data.frame(row.names = name, "Year" = year, "Size" = size, "MPG" = mpg, "Geerbox" = geerbox)


levels(cars[, "Geerbox"]) <- c("auto", "manual")
cars



#Master (tidyverse package)
install.package("tidyverse")


# Data imports in R
my.pok = read.table("pokRdex_comma.csv", sep = ',', header = TRUE, stringsAsFactors = FALSE )
my.pok

# shortcut
my.pok = read.csv("pokRdex_comma.csv", stringsAsFactors =FALSE)
my.pok

#Exporting data
write.csv(my.pok, file ="pokRdex_comma.csv", row.names =FALSE)



# importing data into r


employee.data <- read.csv("employee_data.csv", skip = 23, nrow = 200, stringsAsFactors = FALSE)

# skip = 23 tells R to skip the first 23 rows of the data set when reading the data
# nrow = 200 tells R to only read the first 200 observations


names(employee.data) <- c("Employee number", "First name", "Last name", "Birth date", "Gender", 
                          "Job title", "Salary", "From date", "To date")


# exporting data as a CSV


write.csv(employee.data, file = "employee_exercise.csv", row.names = FALSE)


