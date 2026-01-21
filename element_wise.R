# Two vectors of different lengths
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c(10, 20, 30)

# Element-wise operations using recycling
addition_result <- vec1 + vec2
subtraction_result <- vec1 - vec2
multiplication_result <- vec1 * vec2

# Print results
cat("Element-wise addition (vec1 + vec2):", addition_result, "\n")
cat("Element-wise subtraction (vec1 - vec2):", subtraction_result, "\n")
cat("Element-wise multiplication (vec1 * vec2):", multiplication_result, "\n")
