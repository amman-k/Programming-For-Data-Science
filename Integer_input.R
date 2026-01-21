# Function to get text input and return it as an integer
getintinpt <- function() {
  input_text <- readline(prompt = "Enter an integer: ")  # take user input as text
  input_int <- as.integer(input_text)  # convert text to integer
  return(input_int)  # return integer output
}

# Test Case 1
cat("Test Case 1: User input is '42'\n")
output1 <- getintinpt()
cat("Output (integer):", output1, "\n\n")

# Test Case 2
cat("Test Case 2: User input is '100'\n")
output2 <- getintinpt()
cat("Output (integer):", output2, "\n\n")

# Test Case 3
cat("Test Case 3: User input is '7'\n")
output3 <- getintinpt()
cat("Output (integer):", output3, "\n\n")
