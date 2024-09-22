# Load necessary library
library(dplyr)

# Set the file path for the input CSV
input_file <- "train_service_passenger_counts_fy_2023-2024.csv"

# Set the file path for the output CSV
output_file <- "train_service_passenger_counts_sampled.csv"
setwd("C:/Users/Nathan/Documents/FIT3179HW9/FIT3179HW9")
# Load the data from the CSV file
data <- read.csv(input_file)

# Randomly sample 500,000 rows
sampled_data <- data %>%
  sample_n(500000)

# Save the sampled data to a new CSV file
write.csv(sampled_data, output_file, row.names = FALSE)

# Print a message indicating completion
cat("Random sampling complete. The new file has been saved as", output_file, "\n")