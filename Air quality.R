airquality
?airquality
class(airquality)
View(airquality)
hist(airquality$Temp)

hist(airquality$Temp,
     breaks = 10,
     main = "Basic Histogram of Temperatures",
     xlab = "Temperature",
     ylab = "Frequency",
     labels = TRUE,
     col = "steelblue",
     border = "black"
)

library(ggplot2)
ggplot(
  airquality,
  aes(x=Temp)
)+
  geom_histogram(
    bins = 25,
    fill = "steelblue",
    col = "black"
  )+
  labs( 
    title = "GGplot - Histogram",
    y = "Frequency")+
  #facet_wrap(~Month) 
  theme_light()



