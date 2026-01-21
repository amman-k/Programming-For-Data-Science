# Function to check whether a number is an Armstrong number
is_armstrong <- function(number) {
  num_str <- as.character(number)
  digits <- as.numeric(strsplit(num_str, "")[[1]])
  n_digits <- length(digits)
  
  sum_digits <- sum(digits^n_digits)
  
  if (sum_digits == number) {
    return(paste("The number", number, "is an Armstrong number."))
  } else {
    return(paste("The number", number, "is not an Armstrong number."))
  }
}

# Test the function with different sets of inputs
num1 <- 153   # three-digit Armstrong number
num2 <- 123   # non-Armstrong number
num3 <- 1634  # four-digit Armstrong number
num4 <- 7     # single-digit Armstrong number

# Print the test results
cat("Test Case 1 (153):", is_armstrong(num1), "\n")
cat("Test Case 2 (123):", is_armstrong(num2), "\n")
cat("Test Case 3 (1634):", is_armstrong(num3), "\n")
cat("Test Case 4 (7):", is_armstrong(num4), "\n")
