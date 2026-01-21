teams <- list(
  "Team A" = c(90, 85, 88),
  "Team B" = c(78, 82, 79),
  "Team C" = c(88, 92, 90)
)

add_team <- function(team_name, scores) {
  teams[[team_name]] <<- scores
  cat("Team added:", team_name, "\n")
}

remove_team <- function(team_name) {
  if (team_name %in% names(teams)) {
    teams[[team_name]] <<- NULL
    cat("Team removed:", team_name, "\n")
  } else {
    cat("Team not found:", team_name, "\n")
  }
}

average_scores <- function() {
  averages <- sapply(teams, mean)
  return(averages)
}

rank_teams <- function() {
  averages <- average_scores()
  ranked <- sort(averages, decreasing = TRUE)
  
  cat("Average score for each team:\n")
  print(averages)
  
  cat("\nTeam Rankings (highest to lowest average score):\n")
  print(ranked)
}

cat("Initial team data:\n")
print(teams)

cat("\nAdding new team 'Team D'\n")
add_team("Team D", c(80, 85, 83))

cat("\nRemoving team 'Team B'\n")
remove_team("Team B")

cat("\nCalculating averages and ranking teams:\n")
rank_teams()
