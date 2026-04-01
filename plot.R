
install.packages("ggplot2")

library(ggplot2)

df <- data.frame(
  a = 1:10,
  b = c(-0.06255147, 0.69577692, 0.54925271, -0.18723665, 0.13819408,
        0.48775542, 0.31924104, 0.85842312, -0.44658948, 0.77177795),
  label = letters[11:20]
)

ggplot(df, aes(x = a, y = b)) +
  geom_point() +
  labs(title = "Scatter Plot of a vs b", x = "a", y = "b")

ggplot(df, aes(x = a, y = b)) +
  geom_line(color = "red", size = 1.5) +
  labs(title = "Line Plot of a vs b", x = "a", y = "b")

ggplot(df, aes(x = factor(a), y = b)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(title = "Bar Plot of a vs b", x = "a", y = "b")

ggplot(df, aes(x = a, y = b)) +
  geom_point(size = 3, color = "darkgreen") +
  geom_smooth(method = "lm", se = FALSE, color = "black") +
  labs(title = "Scatter Plot with Linear Model", x = "a", y = "b")
