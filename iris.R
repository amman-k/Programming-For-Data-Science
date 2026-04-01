install.packages(c("ggplot2","plotly"))

library(ggplot2)
library(plotly)

data(iris)

p <- ggplot(iris, aes(x = Sepal.Width, y = Petal.Width, color = Species)) +
  geom_point() +
  labs(title = "Iris Scatter Plot",
       x = "Sepal Width",
       y = "Petal Width")

p

ggplotly(p)

plot_ly(
  data = iris,
  x = ~Sepal.Width,
  y = ~Petal.Width,
  color = ~Species,
  type = "scatter",
  mode = "markers"
) %>%
  layout(
    title = "Iris Data Set Visualization",
    xaxis = list(title = "Sepal Width", ticksuffix = " cm"),
    yaxis = list(title = "Petal Width", ticksuffix = " cm")
  )

