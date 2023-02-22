library(ggplot2)
movies <- read.csv(choose.files())
movies

O <- ggplot(data = movies, aes(budgetmillions))

h <- O + geom_histogram(binwidth = 10, aes(fill=genre), color="Black")

# Labels

h + xlab("Money Axis") + ylab("number of movies")  +
  ggtitle("Movie Budget Distruibtion")+
  theme(axis.title.x = element_text(size = 30, colour = "Darkgreen"),
axis.title.y= element_text(size = 30, color = "Red"),
axis.text.x =element_text(size=20),
axis.text.y =element_text(size=20),
legend.title = element_text(size=30),
legend.text = element_text(size=15),
legend.justification = c(1,1),
legend.position = c(1,1),
plot.title = element_text(size = 20, color="Dark Blue", family = "Courier", hjust = 0.5, vjust = 2)
) 

                                                          
                                                          
                                                          