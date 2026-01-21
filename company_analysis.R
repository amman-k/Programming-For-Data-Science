# Vector of sales figures (in thousands) for 12 months
sales <- c(12, 15, 10, 18, 20, 22, 25, 28, 30, 35, 40, 45)

# Calculate the total sales for the year
total_sales <- sum(sales)

# Find the average monthly sales
average_sales <- mean(sales)

# Identify the months with sales above 25,000
months_above_25 <- which(sales > 25)

# Print results
cat("Total sales for the year (in thousands):", total_sales, "\n")
cat("Average monthly sales (in thousands):", average_sales, "\n")
cat("Months with sales above 25,000:", months_above_25, "\n")
