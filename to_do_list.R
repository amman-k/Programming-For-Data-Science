todo_list <- list()

add_task <- function(task) {
  todo_list[[length(todo_list) + 1]] <<- list(task = task, completed = FALSE)
  cat("Task added:", task, "\n")
}

mark_completed <- function(task_number) {
  if (task_number >= 1 && task_number <= length(todo_list)) {
    todo_list[[task_number]]$completed <<- TRUE
    cat("Task marked as completed:", todo_list[[task_number]]$task, "\n")
  } else {
    cat("Invalid task number.\n")
  }
}

view_tasks <- function() {
  if (length(todo_list) == 0) {
    cat("To-do list is empty.\n")
  } else {
    cat("To-do List:\n")
    for (i in seq_along(todo_list)) {
      status <- if (todo_list[[i]]$completed) "[Completed]" else "[Pending]"
      cat(i, "-", status, todo_list[[i]]$task, "\n")
    }
  }
}

add_task("Finish R assignment")
add_task("Buy groceries")
add_task("Workout")

view_tasks()

mark_completed(2)

view_tasks()
