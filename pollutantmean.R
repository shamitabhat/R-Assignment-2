columnmean <- function(y) {
    nc <- ncol(y)
    means <- numeric(nc)
    for (i in 1:nc) {
        means[i] <- mean(y[, i])
    }
    means
}

dat <- data.frame()
for(i in 1:332) {
    dat <- rbind(dat, read.csv(files_full[i])) 
}
str(dat)

pollutantmean <- function(directory, pollutant, id = 1:332) {
    files_list <- list.files(directory, full.names = TRUE)
    dat <- data.frame()
    for(i in 1:332) {
        dat <- rbind(dat, read.csv(files_list[i]))
    }
    dat_subset
    
}


pollutantmean <- function(directory, pollutant, id = 1:332) {
    dat <- data.frame()
    for(i in id) {
        file_path <- file.path(directory, sprintf("%03d.csv", i))
        dat <- rbind(dat, read.csv(file_path))
    }
        pollutant_data <- dat[[pollutant]]
        mean_value <- mean(pollutant_data, na.rm = TRUE)
        mean_value
    
}