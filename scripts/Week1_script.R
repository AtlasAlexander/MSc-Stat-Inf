# Statistical Inference
# Week 1
# Exploring gapminder data

# Make syre you have the following packages installed:
# ggplot2
# dplyr
# scales
# gapminder

# Run the following code, which double-checks that you have the packages installed,
# and loads them into the R session.

if(!require(ggplot2)){install.packages("ggplot2")}
library(ggplot2)
if(!require(dplyr)){install.packages("dplyr")}
library(dplyr)
if(!require(scales)){install.packages("scales")}
library(scales)
if(!require(gapminder)){install.packages("gapminder")}
library(gapminder)

# The data for today is loaded automatically by the gapminder package
# Let's find out what variables are available, and what are their names? 
# The function str() is your friend here.

str(gapminder)

# Tech note: The gapminder data set was constructed as a tibble, a generalization of a data.frame.
# The default print() method gives an abbreviated printout. Normally, you would use head(gapminder) for this.

gapminder
head(gapminder)

# Task 3
# As a group, try to create some 1-d visualisations in R.
# The Dewis task (boxplots and histograms) will help with some basic interpretation of the most useful and common 1-d visualisations used.
# 1D Graph (Histogram) of life expectancy
ggplot(data = gapminder, mapping = aes(x=lifeExp)) + geom_boxplot()
# Task 4
# As a group, try to create some 2-d visualisations in R.

ggplot(data = gapminder, mapping = aes(x= lifeExp, y=gdpPercap))  +
  geom_point() +
  geom_smooth(se = FALSE)

# Task 5 [Advanced, Optional]
# Try to create some 3-d (or even 4-d) visualisations in R.
newdata = gapminder |> mutate(across(is.numeric, log))
ggplot(newdata, mapping = aes(x= lifeExp, y=gdpPercap))  +
  geom_point(mapping = aes(color = continent, shape = continent)) +
  geom_smooth(method = "lm")



