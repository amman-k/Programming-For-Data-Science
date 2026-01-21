students <- list()

add_student <- function(name, grade) {
  students[[name]] <<- grade
  cat("Student added:", name, "Grade:", grade, "\n")
}

remove_student <- function(name) {
  if (name %in% names(students)) {
    students[[name]] <<- NULL
    cat("Student removed:", name, "\n")
  } else {
    cat("Student not found:", name, "\n")
  }
}

calculate_average <- function() {
  if (length(students) == 0) {
    cat("No students available to calculate average.\n")
    return(NULL)
  }
  avg <- mean(unlist(students))
  cat("Average grade of students:", avg, "\n")
  return(avg)
}

add_student("Alice", 85)
add_student("Bob", 90)
add_student("Charlie", 78)

calculate_average()

remove_student("Bob")

calculate_average()
