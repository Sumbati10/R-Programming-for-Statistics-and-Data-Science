# Data visualizations-data exploration-communicate findings effectively

#ggplot2


#include or install required package
library(tidyverse)
install.packages("ggthemes")
library(ggthemes) 
#Read the data and factor the variables for gender and title
emp <- read.csv("employee-data.csv", skip = 23, stringsAsFactors = FALSE)
emp <- as.tibble(emp)
emp$gender <- as.factor(emp$gender)
emp$title <- as.factor(emp$title)


emp.a <- filter(emp, salary > 45000)
# To determine the distribution of salaries over 45000 among employees, we'll create a histogram on the filtered salary variable. 
# The function to create a histogram in gg plot is a geom_histogram. We specify binwidth to be 5000. This will result in a histogram of 13 bins.
# The color and fill arguments control the color of the histogram bins. Color displays the bin edges, or their border, whereas fill is responsible for the color of the bin itself.
# To be able to distinguish the different bins, we include a darkgrey color for the border and a more contrasting light green color for the actual bins.
# We set the alpha parameter to 0.7. Alpha shows transparancy and takes values between 0 and 1. 0 means completely transparent, 1 means no transparency.
# With labs we add a custome title, as well as x and y labels.
# With theme_ we choose a custom theme and include custom styling options. A font size of 15, and shrift "serif"
hist <- ggplot(emp.a, aes(salary))
hist + geom_histogram(binwidth = 5000, color = "darkslategray",
                      fill = "darkseagreen2", alpha = 0.7) +
  labs(title = "Salary distribution in the employee data",
       x = "Salary", y = "Number of employees in the salary bracket") +
  
  
  theme_solarized_2(light = FALSE, base_size = 15, base_family = "serif")


#Include relevant libraries
library(tidyverse)
library(ggthemes)


bar <- ggplot(emp, aes(title, fill = gender))
bar + geom_bar() + theme_fivethirtyeight() + scale_fill_manual(values = c("chartreuse4", "darkorange")) +
  labs(title = "Job Positions by Gender",
       y = "Employee count",
       x = "Job position")


# theme_fivethirtyeight() does not allow us to name the x- and y-axis; you can change it to one that works
# trying to pass the legend.position= argument into any available theme won't work; if you want to customise 
# your theme beyong font type and size, you would need to create a theme for yourself with the theme() function;
# it takes an abundance of arguments allowing you to modify virtually every aspect of your visualisation
# Here is an example with the classic theme
bar_classic <- ggplot(emp, aes(title, fill = gender))
bar_classic + geom_bar() + theme_classic() + scale_fill_manual(values = c("chartreuse4", "darkorange")) +
  labs(title = "Job Positions by Gender",
       y = "Employee count",
       x = "Job position")




bar_crowded <- ggplot(emp, aes(gender, fill = title)) 
bar_crowded + geom_bar() + theme_fivethirtyeight() + scale_fill_manual(values = c("magenta", "darkorange", "midnightblue",
                                                                                  "springgreen4", "brown1", "gold")) +
  labs(title = "Job Positions by Gender")


# The aes(x = gender, fill = title) mapping is a lot more difficult to read;
# the only thing it makes relatively easy for me to see is that the data is too symmetrially distributed, which
# suggests it has indeed been artifically generated (shocker!)
#including the relevant libraries
library(tidyverse)
library(ggthemes)
install.packages("wesanderson")
library(wesanderson)
library(scales)
#Read and filter the employee data set. Factor on the gender and title variable
emp <- read.csv("employee-data.csv", skip = 23, stringsAsFactors = FALSE)
emp <- as.tibble(emp)
emp$gender <- factor(emp$gender)
emp$title <- factor(emp$title, levels = c("Senior Engineer", "Engineer", "Assistant Engineer", "Senior Staff", "Technique Leader", "Staff"), ordered = TRUE)
#Select employees with 12 month salary higher than 45000
emp.a <- filter(emp, salary > 45000)
#Create a gg boxx plot. The function in gg_plot is geom_boxplot. 
boxx <- ggplot(emp, aes(x = title, y = salary))
my.bp <- boxx + geom_boxplot(outlier.color = "orangered1", outlier.shape = 3) +
  geom_jitter(width = 0.3, aes(color = gender)) +
  #Custom style the box plot, by including a title and subtitle
  ggtitle("Salary distribution", subtitle = "based on position and gender") +
  #add y and x labels
  ylab("Salary") + xlab("Job position") + 
  #choose a theme for the chart 
  theme_economist_white() + 
  #position the legend and align the text elements
  theme(legend.position = "right", axis.text.x = element_text(angle = 90, hjust = 1)) +
  # switch x and y axis positions - for better readability.
  coord_flip() + scale_y_continuous(labels = comma)
#Use the WesAndersen color palette and choose the palette Darjeeling 1. 
#Important to note is that the color palettes available in the wesandersen package usually go up to 5.
#So, if you have a chart, requiring more color variation, you should think of an alternative color palette.
my.bp + scale_color_manual(values=wes_palette(name = "Darjeeling1", n = 2))


#Here is an example of an alternative palette:




my.bp + scale_color_brewer(palette="Set1")


# the palette is part of the RColorBrewer package which you should already have on your
# machines because it comes with the tidyverse
library("ggplot2") # visualization library
library("wesanderson") # color palettes inspired by wes anderson films


# load real estate data set for scatter plot
df_real_estate <- read.csv("scatter_data.csv", 
                           header = TRUE, 
                           sep = ",")
scatter <- ggplot(df_real_estate,
                  aes(x = Area..ft..,
                      y = Price)) +
  geom_point(aes(color = factor(Building.Type),
                 size = 2), #size of the points on the scatter
             alpha = 0.4) + #transparency level for the points
  guides(size = FALSE) +
  labs(color = "Building Type") +
  scale_color_manual(values = wes_palette(name = "Darjeeling1", 
                                          n = 5)) +
  #add and format non data elements:legend, title and axis labels
  theme_classic() +
  theme(legend.justification = c(0.01, 1), 
        legend.position = c(0.01,1)) +
  ggtitle("Relationship between Area and Price of California Real Estate") +
  ylab("Price (000's of $)") +
  xlab("Area (sq. ft.)")

scatter
names(wes_palettes)



