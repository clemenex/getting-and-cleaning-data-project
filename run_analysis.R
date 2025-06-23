#Getting and Cleaning Data Course Project
#Made by Clemenex

# This script performs the following steps on the UCI HAR Dataset:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set.
# 4. Appropriately labels the data set with descriptive variable names.
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(dplyr)

# READ DATA
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("index", "feature"))
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("activityID", "activity"))

mean_std_indices <- grep("mean\\(\\)|std\\(\\)", features$feature)
selected_features <- features$feature[mean_std_indices]

# LOADING DATA
load_data <- function(type) {
  subject <- read.table(file.path("UCI HAR Dataset", type, paste0("subject_", type, ".txt")), col.names = "subject")
  y <- read.table(file.path("UCI HAR Dataset", type, paste0("y_", type, ".txt")), col.names = "activityID")
  X <- read.table(file.path("UCI HAR Dataset", type, paste0("X_", type, ".txt")), col.names = features$feature, check.names = FALSE)
  data <- cbind(subject, y, X)
  # Keep only subject, activityID, and mean/std measurements
  data[, c("subject", "activityID", selected_features)]
}

# LOADING AND MERGING TRAIN & TEST DATA
train_data <- load_data("train")
test_data  <- load_data("test")
full_data  <- rbind(train_data, test_data)

# TIDYING DATA
tidy_data <- full_data %>%
  left_join(activity_labels, by = "activityID") %>%
  select(-activityID)

# LABELLING TIDY DATA
clean_names <- names(tidy_data) %>%
  gsub("\\()", "",          .) %>%
  gsub("^t",     "time",      .) %>%
  gsub("^f",     "frequency", .) %>%
  gsub("Acc",    "Accelerometer", .) %>%
  gsub("Gyro",   "Gyroscope",     .) %>%
  gsub("Mag",    "Magnitude",     .) %>%
  gsub("BodyBody", "Body",        .) %>%
  gsub("-mean",  "Mean",         .) %>%
  gsub("-std",   "Std",          .) %>%
  gsub("-",      "",             .)
names(tidy_data) <- clean_names

# TIDY DATA
final_tidy <- tidy_data %>%
  group_by(subject, activity) %>%
  summarise(across(everything(), mean), .groups = "drop")

# SAVING DATA
write.table(final_tidy, "tidy_dataset.txt", row.names = FALSE, quote = FALSE)