library(logger)

get_logger <- function(log_file = "/workspaces/CD705-R/CD705-R/Research/Bike_Rentals/logs/bike_rentals.log") {
  # Create a logger that writes to a file
  log_appender(appender_file(log_file))
  log_layout(layout_glue_generator(format = '[{level}] {time} {msg}'))
  return(log_appender())
}
