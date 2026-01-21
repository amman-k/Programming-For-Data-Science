# Function to convert Celsius to Fahrenheit
celsius_to_fahrenheit <- function(celsius) {
  return((celsius * 9/5) + 32)  # apply conversion formula
}

# Test the function with different sets of inputs
temp1 <- 0
temp2 <- 25
temp3 <- -10
temp4 <- 100

# Store results
result1 <- celsius_to_fahrenheit(temp1)
result2 <- celsius_to_fahrenheit(temp2)
result3 <- celsius_to_fahrenheit(temp3)
result4 <- celsius_to_fahrenheit(temp4)

# Print the test results
cat(temp1, "degrees Celsius is", result1, "degrees Fahrenheit\n")
cat(temp2, "degrees Celsius is", result2, "degrees Fahrenheit\n")
cat(temp3, "degrees Celsius is", result3, "degrees Fahrenheit\n")
cat(temp4, "degrees Celsius is", result4, "degrees Fahrenheit\n")
