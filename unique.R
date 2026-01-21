# Vector with duplicates
numbers <- c(5, 3, 8, 3, 9, 5, 2, 8)

# Find the unique elements
unique_elements <- unique(numbers)

# Identify the duplicated elements
duplicated_elements <- numbers[duplicated(numbers)]

# Remove duplicates and keep only the first occurrence
no_duplicates <- numbers[!duplicated(numbers)]

# Print results
cat("Unique elements:", unique_elements, "\n")
cat("Duplicated elements:", duplicated_elements, "\n")
cat("Vector after removing duplicates (first occurrence kept):", no_duplicates, "\n")
