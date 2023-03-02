countries <- read.csv("countrys.csv", stringsAsFactors = FALSE)
View(countries)
str(countries)

library(ggplot2)


ggplot(countries, aes(x = population)) + theme(axis.text.x = element_text(angle = 90)) + 
  geom_bar() + 
  labs(y = "population", title = "population wrt countries")


ggplot(countries, aes(x =population, color=population)) + theme(axis.text.x=element_blank()) + 
  geom_bar() + 
  labs(y = "Count", 
       title = "no of populous and non populous") + xlab("non populous")

ggplot(countries, aes(x = population)) + theme() + 
  geom_histogram(color="black", fill="lightblue",linetype="solid") + 
  labs(y = "population", title = "population wrt countries")

ggplot(countries, aes(x = Industry)) + theme() + 
  geom_histogram(color="black", fill="lightblue",linetype="solid") + 
  labs(y = "Industry", title = "Industry wrt countries")

ggplot(countries, aes(x = population, y = Industry)) +
  geom_point() + stat_smooth() +labs(title = "Correlation B/W population and Industry with Non-Linear Regression")

ggplot(countries, aes(x = region, y = population)) +
  geom_point() + stat_smooth() + labs(title = "Correlation B/W region and population with Non-Linear Regression")

ggplot(Bikes, aes(x = region, y = Industry)) +
  geom_point() + stat_smooth() + labs(title = "Correlation B/W region and Industry with Non-Linear Regression")