# dplyr- specializes in data manipulation( filtering, mutating and summarising data)
library (tidyverse)


star <- starwars
star


# viewing the story
view(star)


#Transforming the data
# filter(data, criterion)-subsets data according to a set of criteria
filter(star, species == "Droid")

filter(star, species == "Droid", homeworld == "Tatooine")


select(star, birth_year, homeworld, species, starships)
select(star, name, homeworld:starships)

select(star, ends_with("color"))

# mutate a new variables and preserves the rest
star <- mutate(star, bmi = mass/((height/100)^2))
select(star, name:bmi)



# arrange
arrange(star, mass)
arrange(star, desc(mass))


# Grouping and Summarizing
# summarizing (summarizes data frame in a single result)

summarize(star, avg.height = mean(height, na.rm =T))

#Group by- splits the data set into groups
star.species <- group_by(star, species)
summarize(star.species, avg.height = mean(height, na.rm =T))


# sample(...)- sample_n and sample_frac
# sample_n(...)-extracts a random sample of a fixed number of rows 
# sample_frac(...)- extracts a random sample of a fixed fraction of rows

sample_n(star, 10)
sample_frac(star, 0.1)

# pipe operator(data %%>% operation A %>% operation B)

library(tibble)
library(dplyr)
#If you have saved the data set outside the default R library, make sure you include the path using \ slashes. Example:
#employee.data <- read.csv("c:\users\documents\employee-data.csv", skip = 23, stringsAsFactors = FALSE)
employee.data <- read.csv("employee-data.csv", skip = 23, stringsAsFactors = FALSE)
#Convert the data frame into a tibble
employee.data <- as_tibble(employee.data)
#Covert gender and title variables to factors. 
employee.data$gender <- as.factor(employee.data$gender)
employee.data$title <- as.factor(employee.data$title)


#Checking for missing values -> the Answer is FALSE, so there are no missing values in our data
any(is.na(employee.data))


#Create data frame of high earning employees. Check if the salary column is larger than 70 000.
employee.a <- employee.data %>% 
  select(ends_with("name"), gender, everything()) %>%
  filter(salary >= 70000) %>% 
  arrange(gender, last_name)
#Check the resulting data frame
employee.a
#Save the good earners employee numbers in a seperate data frame.
good.earners <- employee.a["emp_no"]


#Earnings by job position and gender. We group the data by job title, as well as gender. 
# For each we calculate the average salary, and then divide the number by 12, to get an average monthly salary
employee.b <- employee.data %>% 
  group_by(title, gender) %>% 
  summarise(avg.salary = mean(salary)) %>% 
  mutate(monthly = avg.salary/12) %>% 
  arrange(gender, desc(monthly))
# Resulting data frame. 
# Overall the salary for different job positions is comparable between female and male workers.
# What we can observe is that the highest paid female employees are members of the senior staff with an yearly salary of over 60025 dollars.
# The highest paid position among male employees is staff, with around 57500 dollars yearly salary. Senior male staff members receive almost the same amount as yearly pay.
# The lowest paid position based on the data is Senior Engineer. Both female and male employees in that category receive an average yearly salary of under 50000 dollars.
# Male Senior engineers have slightly higher salaries, compared to their female counterparts.
employee.b


# Tidying data-consistently organised data(important of data cleaning
)

library(dplyr)
library(tidyr) 
library(readr) # parse_number function
library(stringr) # str_replace function
#Tidying the weather data
#Reading the weather data. Make sure you've downloaded the csv file. 
#If the csv isn't in your default R directory, make sure you add a directory path using '\' between each folder.# Example : 
#weather <- read.csv("C:/Users/pc/Dropbox/365/R PROGRAMMING/data/weather_untidy.csv", stringsAsFactors = FALSE)
weather <- read.csv("weather-untidy.csv", stringsAsFactors = FALSE)
weather <- as.tibble(weather)
# Gather daily measures and remove missing values. If you take a look at the raw data, you'll observe that there the majority of values are missing.
weather.a <- weather %>% gather(day, value, d1:d31, na.rm = TRUE)
#Arrange measurements by id, year and month.
weather.b <- weather.a %>% mutate(day = parse_number(day)) %>%
  select(id, year, month, day, element, value) %>%
  arrange(id, year, month, day)
#Include seperate columns for lowest and highest temperature measurments for each data in the data, which were previously seperate rows in the data.
weather.c <- weather.b %>% spread(element, value)


#Tidying the tb data
#Read data
tb <- read.csv("tb-untidy.csv", stringsAsFactors = FALSE)
tb <- as.tibble(tb)
#We use the str_replace method, to change the column names. For better readability we add . between strings and integers in the column names.
names(tb) <- str_replace(names(tb), "new_sp_", "")
names(tb) <- str_replace(names(tb), "m", "m.")
names(tb) <- str_replace(names(tb), "f", "f.")


#If we examine the data set by selecting it from the global environment pane, we'll observe that there are several columns, which are completely empty.
#We go ahead and remove them from the data set, as they carry no information.
tb$m.04 <- NULL
tb$m.514 <- NULL
tb$f.04 <- NULL
tb$f.514 <- NULL
tb$m.u <- NULL 
tb$f.u <- NULL


#Combine all m. and f. columns into one, and arrange by country
tb.a <- tb %>% gather(m.014:f.65, key = "column", value = "cases", na.rm = TRUE) %>% arrange(country)
#Further split the new column according to gender and age.
tb.b <- tb.a %>% separate(column, into = c("sex", "age"))
#Upon further examination we notice that the age column shows age intervals, rather than the actual age of participants. 
#We can transform the feature by adding '-' after the first age in the interval.
tb.b$age <- str_replace_all(tb.b$age, "0", "0-")
tb.b$age <- str_replace_all(tb.b$age, "15", "15-")
tb.b$age <- str_replace_all(tb.b$age, "25", "25-")
tb.b$age <- str_replace_all(tb.b$age, "35", "35-")
tb.b$age <- str_replace_all(tb.b$age, "45", "45-")
tb.b$age <- str_replace_all(tb.b$age, "55", "55-")
tb.b$age <- str_replace_all(tb.b$age, "65", "65-100")
#Examine the clean data frame
tb.b








