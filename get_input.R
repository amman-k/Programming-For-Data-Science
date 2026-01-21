# Function to get text input and return it as it is
getintinpt <- function() {
  input_text <- readline(prompt = "Enter some text: ")  # take user input
  return(input_text)  # return the same input
}

# Test Case 1
cat("Test Case 1: User input is \"Hello, world\"\n")
output1 <- getintinpt()
cat("Output:", output1, "\n\n")

# Test Case 2
cat("Test Case 2: User input is '42'\n")
output2 <- getintinpt()
cat("Output:", output2, "\n\n")

# Test Case 3
cat("Test Case 3: User input is 'R programming'\n")
output3 <- getintinpt()
cat("Output:", output3, "\n\n")
