# Function to check whether a year is a leap year
is_leap_year <- function(year) {
  if ((year %% 4 == 0 && year %% 100 != 0) || (year %% 400 == 0)) {
    return(paste("The year", year, "is a leap year."))
  } else {
    return(paste("The year", year, "is not a leap year."))
  }
}

# Test the function with different sets of inputs
year1 <- 2024  # leap year
year2 <- 2023  # common year
year3 <- 2000  # leap year divisible by 400
year4 <- 1900  # common year divisible by 100

# Print the test results
cat("Test Case 1 (2024):", is_leap_year(year1), "\n")
cat("Test Case 2 (2023):", is_leap_year(year2), "\n")
cat("Test Case 3 (2000):", is_leap_year(year3), "\n")
cat("Test Case 4 (1900):", is_leap_year(year4), "\n")
