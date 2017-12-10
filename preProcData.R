# File to read
file_temp <- "household_power_consumption.txt"
file_name <- file(file_temp, "r")

# Get names of data frame
df_names <- readLines(file_name, n = 1L)
df_names <- strsplit(df_names, ";")

# Create a data frame to store data
nrow <- 0L
ncol <- length(df_names[[1]])
df <- data.frame(matrix(nrow = nrow, ncol = ncol))
names(df) <- df_names[[1]]

# Read lines of the file
count <- 0L
d1 <- "2007-02-01"
d2 <- "2007-02-02"
while (TRUE) {
  df_line <- readLines(file_name, n = 1L)
  if (length(line) == 0){
    break
  }
  else{
    df_line <- strsplit(df_line, ";")
    if ((as.Date(df_line[[1]][1][1], format = "%d/%m/%Y") == d1) | (as.Date(df_line[[1]][1][1], format = "%d/%m/%Y") == d2)){
      break
    }
  }
}

while (TRUE){
  df[nrow(df) + 1, ] <- df_line[[1]]
  df_line <- readLines(file_name, n = 1L)
  if (length(line) == 0){
    break
  }
  else{
    df_line <- strsplit(df_line, ";")
    if ((as.Date(df_line[[1]][1][1], format = "%d/%m/%Y") != d1) & (as.Date(df_line[[1]][1][1], format = "%d/%m/%Y") != d2)){
      break
    }
  }
}
# Close the file
close(file_name)