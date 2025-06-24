# Code Book for UCI HAR Tidy Dataset

This code book describes the variables in the tidy data set created by `run_analysis.R` and output to `tidy_dataset.txt`. It includes original variable definitions, units, and notes on transformations applied (mean of each variable for each subject/activity).

---

## Data Set Overview

- **Source:** UCI Human Activity Recognition Using Smartphones Dataset  
- **Output File:** `tidy_dataset.txt`  
- **Dimensions:** 180 observations (30 subjects × 6 activities) by 68 variables  
- **Variables:**
  1. **subject**
  2. **activity**
  3. 66 feature variables representing the **average** of selected time- and frequency-domain measurements for each subject–activity pair.

---

## Variable Descriptions

| Variable                             | Description                                                                                                   | Units    | Type     |
|--------------------------------------|---------------------------------------------------------------------------------------------------------------|----------|----------|
| **subject**                          | Identifier of study participant                                                                                | —        | Integer  |
| **activity**                         | Activity performed by the subject; one of `WALKING`, `WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING`, `LAYING` | —        | Factor   |

### Time-Domain Signals (Accelerometer & Gyroscope)

Each variable represents the **average** of the original signal's mean or standard deviation measurement.

| Variable                                | Description                                                          | Units    | Type    |
|-----------------------------------------|----------------------------------------------------------------------|----------|---------|
| **timeBodyAccelerometerMeanX**          | Mean of body acceleration signal in X direction                       | g        | Numeric |
| **timeBodyAccelerometerMeanY**          | Mean of body acceleration signal in Y direction                       | g        | Numeric |
| **timeBodyAccelerometerMeanZ**          | Mean of body acceleration signal in Z direction                       | g        | Numeric |
| **timeBodyAccelerometerStdX**           | Standard deviation of body acceleration in X direction                | g        | Numeric |
| **timeBodyAccelerometerStdY**           | Standard deviation of body acceleration in Y direction                | g        | Numeric |
| **timeBodyAccelerometerStdZ**           | Standard deviation of body acceleration in Z direction                | g        | Numeric |
| **timeGravityAccelerometerMeanX**       | Mean of gravity acceleration signal in X direction                    | g        | Numeric |
| **timeGravityAccelerometerMeanY**       | Mean of gravity acceleration signal in Y direction                    | g        | Numeric |
| **timeGravityAccelerometerMeanZ**       | Mean of gravity acceleration signal in Z direction                    | g        | Numeric |
| **timeGravityAccelerometerStdX**        | Standard deviation of gravity acceleration in X direction             | g        | Numeric |
| **timeGravityAccelerometerStdY**        | Standard deviation of gravity acceleration in Y direction             | g        | Numeric |
| **timeGravityAccelerometerStdZ**        | Standard deviation of gravity acceleration in Z direction             | g        | Numeric |
| **timeBodyAccelerometerJerkMeanX**      | Mean of body acceleration Jerk signal in X direction                  | g/s      | Numeric |
| **timeBodyAccelerometerJerkMeanY**      | Mean of body acceleration Jerk signal in Y direction                  | g/s      | Numeric |
| **timeBodyAccelerometerJerkMeanZ**      | Mean of body acceleration Jerk signal in Z direction                  | g/s      | Numeric |
| **timeBodyAccelerometerJerkStdX**       | Std. dev. of body acceleration Jerk in X direction                   | g/s      | Numeric |
| **timeBodyAccelerometerJerkStdY**       | Std. dev. of body acceleration Jerk in Y direction                   | g/s      | Numeric |
| **timeBodyAccelerometerJerkStdZ**       | Std. dev. of body acceleration Jerk in Z direction                   | g/s      | Numeric |
| **timeBodyGyroscopeMeanX**              | Mean of body gyroscope signal in X direction                         | rad/s    | Numeric |
| **timeBodyGyroscopeMeanY**              | Mean of body gyroscope signal in Y direction                         | rad/s    | Numeric |
| **timeBodyGyroscopeMeanZ**              | Mean of body gyroscope signal in Z direction                         | rad/s    | Numeric |
| **timeBodyGyroscopeStdX**               | Std. dev. of body gyroscope in X direction                           | rad/s    | Numeric |
| **timeBodyGyroscopeStdY**               | Std. dev. of body gyroscope in Y direction                           | rad/s    | Numeric |
| **timeBodyGyroscopeStdZ**               | Std. dev. of body gyroscope in Z direction                           | rad/s    | Numeric |
| **timeBodyGyroscopeJerkMeanX**          | Mean of body gyroscope Jerk signal in X direction                    | rad/s²   | Numeric |
| **timeBodyGyroscopeJerkMeanY**          | Mean of body gyroscope Jerk signal in Y direction                    | rad/s²   | Numeric |
| **timeBodyGyroscopeJerkMeanZ**          | Mean of body gyroscope Jerk signal in Z direction                    | rad/s²   | Numeric |
| **timeBodyGyroscopeJerkStdX**           | Std. dev. of body gyroscope Jerk in X direction                      | rad/s²   | Numeric |
| **timeBodyGyroscopeJerkStdY**           | Std. dev. of body gyroscope Jerk in Y direction                      | rad/s²   | Numeric |
| **timeBodyGyroscopeJerkStdZ**           | Std. dev. of body gyroscope Jerk in Z direction                      | rad/s²   | Numeric |
| **timeBodyAccelerometerMagnitudeMean**  | Mean of body acceleration magnitude signal                           | g        | Numeric |
| **timeBodyAccelerometerMagnitudeStd**   | Std. dev. of body acceleration magnitude signal                      | g        | Numeric |
| **timeGravityAccelerometerMagnitudeMean** | Mean of gravity acceleration magnitude signal                      | g        | Numeric |
| **timeGravityAccelerometerMagnitudeStd**  | Std. dev. of gravity acceleration magnitude signal                 | g        | Numeric |
| **timeBodyAccelerometerJerkMagnitudeMean** | Mean of body acceleration Jerk magnitude                           | g/s      | Numeric |
| **timeBodyAccelerometerJerkMagnitudeStd**  | Std. dev. of body acceleration Jerk magnitude                      | g/s      | Numeric |
| **timeBodyGyroscopeMagnitudeMean**      | Mean of body gyroscope magnitude signal                              | rad/s    | Numeric |
| **timeBodyGyroscopeMagnitudeStd**       | Std. dev. of body gyroscope magnitude signal                         | rad/s    | Numeric |
| **timeBodyGyroscopeJerkMagnitudeMean**  | Mean of body gyroscope Jerk magnitude                                | rad/s²   | Numeric |
| **timeBodyGyroscopeJerkMagnitudeStd**   | Std. dev. of body gyroscope Jerk magnitude                           | rad/s²   | Numeric |

### Frequency-Domain Signals

Variables prefixed with `frequency` represent the **average** of mean or standard deviation measurements in the frequency domain. Units match time-domain variables.

| Variable                                    | Description                                                  | Units  | Type    |
|---------------------------------------------|--------------------------------------------------------------|--------|---------|
| **frequencyBodyAccelerometerMeanX**         | Mean of body accelerometer signal in X (frequency domain)    | g      | Numeric |
| **frequencyBodyAccelerometerMeanY**         | Mean of body accelerometer signal in Y (frequency domain)    | g      | Numeric |
| **frequencyBodyAccelerometerMeanZ**         | Mean of body accelerometer signal in Z (frequency domain)    | g      | Numeric |
| **frequencyBodyAccelerometerStdX**          | Std. dev. of body accelerometer in X (frequency domain)      | g      | Numeric |
| **frequencyBodyAccelerometerStdY**          | Std. dev. of body accelerometer in Y (frequency domain)      | g      | Numeric |
| **frequencyBodyAccelerometerStdZ**          | Std. dev. of body accelerometer in Z (frequency domain)      | g      | Numeric |
| **frequencyBodyAccelerometerJerkMagnitudeMean** | Mean of body acceleration Jerk magnitude (frequency domain) | g/s    | Numeric |
| **frequencyBodyAccelerometerJerkMagnitudeStd**  | Std. dev. of body acceleration Jerk magnitude (frequency domain) | g/s    | Numeric |
| **frequencyBodyGyroscopeMagnitudeMean**     | Mean of body gyroscope magnitude (frequency domain)          | rad/s  | Numeric |
| **frequencyBodyGyroscopeMagnitudeStd**      | Std. dev. of body gyroscope magnitude (frequency domain)     | rad/s  | Numeric |
| **frequencyBodyGyroscopeJerkMagnitudeMean** | Mean of body gyroscope Jerk magnitude (frequency domain)     | rad/s² | Numeric |
| **frequencyBodyGyroscopeJerkMagnitudeStd**  | Std. dev. of body gyroscope Jerk magnitude (frequency domain) | rad/s² | Numeric |

---

## Notes on Transformations

- All feature variables are **averages** grouped by `subject` and `activity`.  
- Units are preserved from the original signals (e.g., gravitational acceleration `g`, angular rate `rad/s`).  
- Column names have been cleaned: `t`→`time`, `f`→`frequency`, `Acc`→`Accelerometer`, `Gyro`→`Gyroscope`, `Mag`→`Magnitude`, and `-mean()`→`Mean`, `-std()`→`Std`.

---

## References

- [UCI HAR Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)  
- `run_analysis.R` script for processing logic
