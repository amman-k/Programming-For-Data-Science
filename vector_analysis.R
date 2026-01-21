# Vector of heights in centimeters
heights <- c(150, 160, 165, 155, 170, 175, 180)

# Calculate mean and median
mean_height <- mean(heights)
median_height <- median(heights)

# Find maximum and minimum heights
max_height <- max(heights)
min_height <- min(heights)

# Determine the number of students taller than 165 cm
taller_than_165 <- sum(heights > 165)

# Sort the heights in ascending order
sorted_heights <- sort(heights)

# Print results
cat("Mean of heights:", mean_height, "\n")
cat("Median of heights:", median_height, "\n")
cat("Maximum height:", max_height, "\n")
cat("Minimum height:", min_height, "\n")
cat("Number of students taller than 165 cm:", taller_than_165, "\n")
cat("Heights in ascending order:", sorted_heights, "\n")
