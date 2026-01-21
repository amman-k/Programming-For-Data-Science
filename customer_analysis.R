customers <- list(
  Alice = c(200, 150, 300),
  Bob = c(100, 80, 150),
  Charlie = c(250, 300, 100)
)

add_customer <- function(name, purchases) {
  customers[[name]] <<- purchases
  cat("Customer added:", name, "\n")
}

remove_customer <- function(name) {
  if (name %in% names(customers)) {
    customers[[name]] <<- NULL
    cat("Customer removed:", name, "\n")
  } else {
    cat("Customer not found:", name, "\n")
  }
}

total_purchases <- function() {
  totals <- sapply(customers, sum)
  return(totals)
}

highest_lowest_customer <- function() {
  totals <- total_purchases()
  
  highest_customer <- names(totals)[which.max(totals)]
  lowest_customer <- names(totals)[which.min(totals)]
  
  cat("Total purchases for each customer:\n")
  print(totals)
  
  cat("\nCustomer with highest total purchases:", highest_customer, "-", totals[highest_customer], "\n")
  cat("Customer with lowest total purchases:", lowest_customer, "-", totals[lowest_customer], "\n")
}

cat("Initial customer data:\n")
print(customers)

cat("\nAdding new customer 'David'\n")
add_customer("David", c(120, 200, 180))

cat("\nRemoving customer 'Bob'\n")
remove_customer("Bob")

cat("\nFinding totals and highest/lowest customer:\n")
highest_lowest_customer()
