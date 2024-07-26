complete <- function(directory, id = 1:332) {
    df <- data.frame(file = character(), complete_cases = numeric(), stringsAsFactors = FALSE)
    for (i in id) {
        file_path <- file.path(directory, sprintf("%03d.csv, i"))
        data <- read.csv(file_path)
        num_complete_cases <- sum(complete.cases(data))
        file_name <- basename(file_path)
        df <- rbind(df, data-frame(file = file_name, complete_cases = num_complete_cases, stringsAsFactors = FALSE)
    }
    df
}

complete <- function(directory, id = 1:332) {
    df <- data.frame(id = character(), nobs = numeric(), stringsAsFactors = FALSE)
    for (i in id) {
        file_path <- file.path(directory, sprintf("%03d.csv", i))  
        data <- read.csv(file_path)
        num_complete_cases <- sum(complete.cases(data))
        file_name <- basename(file_path)
        df <- rbind(df, data.frame(id = file_name, nobs = num_complete_cases, stringsAsFactors = FALSE))  # Corrected data.frame() call
    }
    df
}
