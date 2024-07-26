corr <- function(directory, threshold = 0) {
    correlations <- numeric()
    files_list <- list.files(directory, full.names = TRUE)
    
    for (file_path in files_list) {
        data <- read.csv(file_path)
        num_complete_cases <- sum(complete.cases(data))
        
        if (num_complete_cases > threshold) {
            correlation <- cor(data$sulfate, data$nitrate, use = "complete.obs")
            correlations <- c(correlations, correlation)
        }
    }
    return(correlations)
}

