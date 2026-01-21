library_books <- list(
  "The Hobbit" = c("Alice", "Bob"),
  "1984" = c("Charlie", "Alice"),
  "Moby Dick" = c("Bob")
)

add_book <- function(book_name, borrowers) {
  library_books[[book_name]] <<- borrowers
  cat("Book added:", book_name, "\n")
}

remove_book <- function(book_name) {
  if (book_name %in% names(library_books)) {
    library_books[[book_name]] <<- NULL
    cat("Book removed:", book_name, "\n")
  } else {
    cat("Book not found:", book_name, "\n")
  }
}

total_borrowers <- function() {
  totals <- sapply(library_books, length)
  return(totals)
}

highest_lowest_borrowed <- function() {
  totals <- total_borrowers()
  
  highest_book <- names(totals)[which.max(totals)]
  lowest_book <- names(totals)[which.min(totals)]
  
  cat("Total borrowers for each book:\n")
  print(totals)
  
  cat("\nBook with highest number of borrowers:", highest_book, "-", totals[highest_book], "\n")
  cat("Book with lowest number of borrowers:", lowest_book, "-", totals[lowest_book], "\n")
}

cat("Initial library book data:\n")
print(library_books)

cat("\nAdding new book 'Harry Potter'\n")
add_book("Harry Potter", c("David", "Emma", "Alice"))

cat("\nRemoving book 'Moby Dick'\n")
remove_book("Moby Dick")

cat("\nFinding totals and highest/lowest borrowed book:\n")
highest_lowest_borrowed()
