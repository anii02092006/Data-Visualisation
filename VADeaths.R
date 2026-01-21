?VADeaths
class(VADeaths)
help(class)
va_df <- as.data.frame(VADeaths)
class(va_df)
help("data.frame")
View(va_df)
va_df$AgeGroups <- row.names(VADeaths)
View(va_df)
va_df

va_df <- as.data.frame(VADeaths)

va_long <- reshape(va_df,
                   direction = "long",
                   varying = colnames(VADeaths),
                   v.names = "DeathRate",
                   timevar = "Population",
                   times = colnames(VADeaths))
View(va_long)
hist(va_long$DeathRate)
hist(va_long$DeathRate,
     breaks = 5,
     main="Basic Histogram of VA Deathrates",
     xlab = "VA Deathrates",
     ylab = "Frequency",
     labels = TRUE,
     col = "lavender",
     border = "blue")

library(ggplot2)
ggplot(
  va_long,
  aes(x=DeathRate)
)+
  geom_histogram(
    bins=5,
    fill="steelblue",
    col="red")+
  labs(
    title="GGPLOT-Histogram",
    y="Frquency")+
   #facet_wrap(~Population)
   theme_dark()
