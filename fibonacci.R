# Function to generate and print Fibonacci sequence
generate_fibonacci <- function(n) {
  if (n <= 0) {
    cat("Please enter a positive number of terms.\n")
    return(NULL)
  }
  
  fib <- numeric(n)
  fib[1] <- 0
  
  if (n >= 2) {
    fib[2] <- 1
  }
  
  if (n > 2) {
    for (i in 3:n) {
      fib[i] <- fib[i - 1] + fib[i - 2]
    }
  }
  
  cat("Fibonacci sequence up to", n, "terms:\n")
  cat(fib, "\n\n")
}

# Test the function with different sets of inputs
cat("Test Case 1: n = 5\n")
generate_fibonacci(5)

cat("Test Case 2: n = 10\n")
generate_fibonacci(10)

cat("Test Case 3: n = 20\n")
generate_fibonacci(20)
