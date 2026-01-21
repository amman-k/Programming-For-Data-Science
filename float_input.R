# Function to get floating point input from the user
getfloatinpt <- function() {
  user_input <- readline(prompt = "Enter a floating point number: ")  # read input as text
  float_input <- as.numeric(user_input)  # convert text to numeric (float)
  return(float_input)  # return floating point value
}

# Test Case 1
cat("Test Case 1: User input is '3.14'\n")
output1 <- getfloatinpt()
cat("Output (float):", output1, "\n\n")

# Test Case 2
cat("Test Case 2: User input is '2.718'\n")
output2 <- getfloatinpt()
cat("Output (float):", output2, "\n\n")

# Test Case 3
cat("Test Case 3: User input is '0.001'\n")
output3 <- getfloatinpt()
cat("Output (float):", output3, "\n\n")
