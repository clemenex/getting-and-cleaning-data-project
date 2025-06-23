# **Getting and Cleaning Data — Course Project**

This repository contains the work for the "Getting and Cleaning Data" course project. The goal is to collect, work with, and clean a dataset from wearable computing (the UCI HAR Dataset) and produce a tidy data set ready for later analysis.

## Repository Structure

- `run_analysis.R`

An R script that:

1. Merges the training and test sets into one data frame.

2. Extracts measurements on the mean and standard deviation for each measurement.

3. Applies descriptive activity names.

4. Cleans up variable names for clarity.

5. Produces a second independent tidy dataset with the average of each variable for each subject/activity.

- `tidy_dataset.txt`
The final output from run_analysis.R, containing the average of each variable for each activity and subject.

## Prerequisites

- **R** (version 3.6 or higher)

- The `dplyr` package

You can install dplyr from CRAN if it’s not already available:

`install.packages("dplyr")`


## Script Workflow Details

### Inside run_analysis.R, the main steps are:

- Load feature and activity metadata from `features.txt` and `activity_labels.txt`.

- Define a helper function to load and bind `subject`, `activity`, and `measurement` data for a given set (train or test).

- Filter measurements to only those representing means (`mean()`) or standard deviations (`std()`).

- Merge training and test sets using `rbind()`.

- Join descriptive activity names.

- Clean column names by expanding abbreviations, removing punctuation, and applying title-cased labels.

- Group and summarize with dplyr to compute the average of each variable for each subject/activity pair.

- Write the final tidy data to tidy_dataset.txt.

# Author
**clemenex**