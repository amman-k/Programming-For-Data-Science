# Vector of daily closing prices
closing_prices <- c(120, 122, 118, 121, 119, 117, 123, 125, 126, 124,
                    128, 130, 129, 131, 135, 134, 136, 137, 140, 138,
                    139, 141, 142, 144, 143, 145, 146, 148, 147, 149)

# Calculate daily returns (percentage change)
daily_returns <- diff(closing_prices) / head(closing_prices, -1) * 100

# Identify the days with the highest and lowest returns
highest_return_day <- which.max(daily_returns) + 1
lowest_return_day <- which.min(daily_returns) + 1

highest_return <- max(daily_returns)
lowest_return <- min(daily_returns)

# Calculate cumulative return over the month
cumulative_return <- ((tail(closing_prices, 1) - closing_prices[1]) / closing_prices[1]) * 100

# Print results
cat("Daily returns (%):\n")
print(daily_returns)

cat("\nHighest return:", highest_return, "% on day", highest_return_day, "\n")
cat("Lowest return:", lowest_return, "% on day", lowest_return_day, "\n")

cat("\nCumulative return over the month:", cumulative_return, "%\n")
