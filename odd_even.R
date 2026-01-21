# Function to check whether a number is odd or even
check_odd_even <- function(num) {
  if (num %% 2 == 0) {
    return(paste(num, "is Even"))
  } else {
    return(paste(num, "is Odd"))
  }
}

# Test the function with different sets of inputs
test1 <- 8     # Positive even number
test2 <- 7     # Positive odd number
test3 <- 0     # Zero (even)
test4 <- -4    # Negative even number
test5 <- -9    # Negative odd number

# Print the test results
cat("Test Case 1 (Positive even):", check_odd_even(test1), "\n")
cat("Test Case 2 (Positive odd):", check_odd_even(test2), "\n")
cat("Test Case 3 (Zero):", check_odd_even(test3), "\n")
cat("Test Case 4 (Negative even):", check_odd_even(test4), "\n")
cat("Test Case 5 (Negative odd):", check_odd_even(test5), "\n")
