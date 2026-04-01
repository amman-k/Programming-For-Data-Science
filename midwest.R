
library(ggplot2)

data(midwest)

# Scatter Plot with Trend Line
ggplot(midwest, aes(x = percollege, y = percadultpoverty, color = state)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "College Education vs Adult Poverty",
       x = "Percent College Educated",
       y = "Percent Adult Poverty")

# Bar Chart (Total Population by State)
ggplot(midwest, aes(x = state, y = poptotal, fill = state)) +
  geom_bar(stat = "identity") +
  labs(title = "Total Population by State",
       x = "State",
       y = "Population")

# Hexagonal Heatmap
ggplot(midwest, aes(x = percollege, y = percadultpoverty)) +
  geom_hex() +
  labs(title = "Hexbin Plot of Education vs Poverty",
       x = "Percent College Educated",
       y = "Percent Adult Poverty")

# Scatter with Overridden Mapping (child poverty)
ggplot(midwest, aes(x = percollege)) +
  geom_point(aes(y = percchildbelowpovert, color = state)) +
  labs(title = "College Education vs Child Poverty",
       x = "Percent College Educated",
       y = "Percent Child Poverty")

# Scatter with Custom Color and Transparency
ggplot(midwest, aes(x = percollege, y = percadultpoverty)) +
  geom_point(color = "red", alpha = 0.5) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Customized Scatter Plot",
       x = "Percent College Educated",
       y = "Percent Adult Poverty")
