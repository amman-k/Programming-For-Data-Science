shopping_list <- c()

add_item <- function(item) {
  shopping_list <<- c(shopping_list, item)
  cat("Item added:", item, "\n")
}

remove_item <- function(item) {
  if (item %in% shopping_list) {
    shopping_list <<- shopping_list[shopping_list != item]
    cat("Item removed:", item, "\n")
  } else {
    cat("Item not found:", item, "\n")
  }
}

view_list <- function() {
  if (length(shopping_list) == 0) {
    cat("Shopping list is empty.\n")
  } else {
    cat("Shopping List:\n")
    for (i in seq_along(shopping_list)) {
      cat(i, "-", shopping_list[i], "\n")
    }
  }
}

add_item("Milk")
add_item("Bread")
add_item("Eggs")

view_list()

remove_item("Bread")

view_list()
