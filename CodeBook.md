---
title: "CodeBook"
output:
  html_document: default
  pdf_document: default
---
## CodeBook for Getting and Cleaning Data
As per the assignment instructions, this CodeBook contains a description of the original dataset, the data acquisition process, the data transformation process, the variables, and the tidy dataset format.

##Description of original dataset
The original dataset is fully described at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
and the specific data is located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
A copy of this data is stored in this repository as well for your convenience.

The data was gathered from Samsung Galaxy S II phones worn on subject's waists, as they performed the activities of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. The device's built-in gyroscope and acceleromoter allowed for raw data capture, which was then videoed and entered into the set.

##Data acquisition process
In terms of the original informnation, data was acquired using Samsung Galaxy II phones as well as video held at a constant rate of 50Hz. 128 readings were captured per window.

In this assignment, the data is then captured from the web location of the original zip location, and extracted into a folder at one level below the run_Analysis.R file. Data is not further modified from this extraction.

##Data transformation process
In terms of the original information, data was pre-processed with noise filteres and sampled with sliding windows of 2.56 and 50% overlap. Butterworth low-pass filters were also used to separate into acceleration an dgravity. Further detail is available as part of the description of the original dataset.

In this assignment, data is then transformed through a sequency of merges and renamings for simplification using regular expressions to make more human-readable columns. Aggregation and mean functionality is then employed to provide useful information for each unique variable in the tidied dataset.

##Variables
The list of variables and summaries in this tidy data set is as per below. All measurements are in units of seconds.

####subjects
####activities
####TimeBodyAccelerometerMean-X
####TimeBodyAccelerometerMean-Y
####TimeBodyAccelerometerMean-Z
####TimeBodyAccelerometerStandardDeviation-X
####TimeBodyAccelerometerStandardDeviation-Y
####TimeBodyAccelerometerStandardDeviation-Z
####TimeGravityAccelerometerMean-X
####TimeGravityAccelerometerMean-Y
####TimeGravityAccelerometerMean-Z
####TimeGravityAccelerometerStandardDeviation-X
####TimeGravityAccelerometerStandardDeviation-Y
####TimeGravityAccelerometerStandardDeviation-Z
####TimeBodyAccelerometerJerkMean-X
####TimeBodyAccelerometerJerkMean-Y
####TimeBodyAccelerometerJerkMean-Z
####TimeBodyAccelerometerJerkStandardDeviation-X
####TimeBodyAccelerometerJerkStandardDeviation-Y
####TimeBodyAccelerometerJerkStandardDeviation-Z
####TimeBodyGyroscopeMean-X
####TimeBodyGyroscopeMean-Y
####TimeBodyGyroscopeMean-Z
####TimeBodyGyroscopeStandardDeviation-X
####TimeBodyGyroscopeStandardDeviation-Y
####TimeBodyGyroscopeStandardDeviation-Z
####TimeBodyGyroscopeJerkMean-X
####TimeBodyGyroscopeJerkMean-Y
####TimeBodyGyroscopeJerkMean-Z
####TimeBodyGyroscopeJerkStandardDeviation-X
####TimeBodyGyroscopeJerkStandardDeviation-Y
####TimeBodyGyroscopeJerkStandardDeviation-Z
####TimeBodyAccelerometerMagnitudeMean
####TimeBodyAccelerometerMagnitudeStandardDeviation
####TimeGravityAccelerometerMagnitudeMean
####TimeGravityAccelerometerMagnitudeStandardDeviation
####TimeBodyAccelerometerJerkMagnitudeMean
####TimeBodyAccelerometerJerkMagnitudeStandardDeviation
####TimeBodyGyroscopeMagnitudeMean
####TimeBodyGyroscopeMagnitudeStandardDeviation
####TimeBodyGyroscopeJerkMagnitudeMean
####TimeBodyGyroscopeJerkMagnitudeStandardDeviation
####FrequencyBodyAccelerometerMean-X
####FrequencyBodyAccelerometerMean-Y
####FrequencyBodyAccelerometerMean-Z
####FrequencyBodyAccelerometerStandardDeviation-X
####FrequencyBodyAccelerometerStandardDeviation-Y
####FrequencyBodyAccelerometerStandardDeviation-Z
####FrequencyBodyAccelerometerJerkMean-X
####FrequencyBodyAccelerometerJerkMean-Y
####FrequencyBodyAccelerometerJerkMean-Z
####FrequencyBodyAccelerometerJerkStandardDeviation-X
####FrequencyBodyAccelerometerJerkStandardDeviation-Y
####FrequencyBodyAccelerometerJerkStandardDeviation-Z
####FrequencyBodyGyroscopeMean-X
####FrequencyBodyGyroscopeMean-Y
####FrequencyBodyGyroscopeMean-Z
####FrequencyBodyGyroscopeStandardDeviation-X
####FrequencyBodyGyroscopeStandardDeviation-Y
####FrequencyBodyGyroscopeStandardDeviation-Z
####FrequencyBodyAccelerometerMagnitudeMean
####FrequencyBodyAccelerometerMagnitudeStandardDeviation
####FrequencyBodyAccelerometerJerkMagnitudeMean
####FrequencyBodyAccelerometerJerkMagnitudeStandardDeviation
####FrequencyBodyGyroscopeMagnitudeMean
####FrequencyBodyGyroscopeMagnitudeStandardDeviation
####FrequencyBodyGyroscopeJerkMagnitudeMean
####FrequencyBodyGyroscopeJerkMagnitudeStandardDeviation

##Tidy Dataset format
The final format of this data is a Text file created in the same folder as is the run_Analysis.R file. A copy has been preserved in this repository for convenience.