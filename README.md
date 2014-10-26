---
title: "README.MD"
author: "Herman crank"
date: "Sunday, October 26, 2014"
---
Getting and Cleaning Data
==========================
This is the Readme file for the course project.  This file describes the use and function of the run_analysis.R script.

The run_analysis.R script creates a summaization file (tidydata.txt) of the Human Activity Recognition Using Smartphones Dataset Version 1.0.  Summary of the experiment below

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

--------------------------------------
R script:  run_analysis.R does the following;
* 1. Merges the training and the test sets to create one data set.
* 2. Extracts only the measurements on the mean and standard deviation for each measurement.
* 3. Assigns descriptive activity names to name the activities in the data set
* 4. Appropriately labels the data set with descriptive variable names. 
* 5. Using the data set from step 4 of run_analysis.R , creates a independent tidy data set with the average of each variable for each activity and each subject.

--------------------------------------------------------
##Feature Selection 
====================
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

-----------------------------
## Tidydata.txt fields
Using the feature above the tidydata.txt focus on the means and standardard deviation for the time-based variables.  In addition we have retained means and STD for the magnitudes, relevant FFT variables and angular mearsurement (where they appeat to be relevant).  Given the length of the variables names CamelCase was used to improve readability.  

### Grouping variables subjects and activities
*       subjects
*	activities

### Time-based variables by 3-dimensional axis
*	BodyAccelerationMeanX
*	BodyAccelerationMeanY
*	BodyAccelerationMeanZ
*	BodyAccelerationStdX
*	BodyAccelerationStdY
*	BodyAccelerationStdZ
*	GravityAccelerationMeanX
*	GravityAccelerationMeanY
*	GravityAccelerationMeanZ
*	GravityAccelerationStdX
*	GravityAccelerationStdY
*	GravityAccelerationStdZ
*	BodyAccelerometerJerkMeanX
*	BodyAccelerometerJerkMeanY
*	BodyAccelerometerJerkMeanZ
*	BodyAccelerometerJerkStdX
*	BodyAccelerometerJerkStdY
*	BodyAccelerometerJerkStdZ
*	BodyGyroMeanX
*	BodyGyroMeanY
*	BodyGyroMeanZ
*	BodyGyroStdX
*	BodyGyroStdY
*	BodyGyroStdZ
*	BodyGyroAccelerometerJerkMeanX
*	BodyGyroAccelerometerJerkMeanY
*	BodyGyroAccelerometerJerkMeanZ
*	BodyGyroAccelerometerJerkStdX
*	BodyGyroAccelerometerJerkStdY
*	BodyGyroAccelerometerJerkStdZ

### Time-based variables magnitudes
*	BodyAccelerationMagnitudeMean
*	BodyAccelerationMagnitudeStd
*	GravityAccelerationMagnitudeMean
*	GravityAccelerationMagnitudeStd
*	BodyAccelerometerJerkMagnitudeMean
*	BodyAccelerometerJerkMagnitudeStd
*	BodyGyroMagnitudeMean
*	BodyGyroMagnitudeStd
*	BodyGyroAccelerometerJerkMagnitudeMean
*	BodyGyroAccelerometerJerkMagnitudeStd

### Fourier transformation of time-base variablesby 3-dimensional axis
*	FFTBodyAccelerationMeanX
*	FFTBodyAccelerationMeanY
*	FFTBodyAccelerationMeanZ
*	FFTBodyAccelerationStdX
*	FFTBodyAccelerationStdY
*	FFTBodyAccelerationStdZ
*	FFTBodyAccelerometerJerkMeanX
*	FFTBodyAccelerometerJerkMeanY
*	FFTBodyAccelerometerJerkMeanZ
*	FFTBodyAccelerometerJerkStdX
*	FFTBodyAccelerometerJerkStdY
*	FFTBodyAccelerometerJerkStdZ
*	FFTBodyGyroMeanX
*	FFTBodyGyroMeanY
*	FFTBodyGyroMeanZ
*	FFTBodyGyroStdX
*	FFTBodyGyroStdY
*	FFTBodyGyroStdZ
*	FFTBodyAccelerationMagnitudeMean
*	FFTBodyAccelerationMagnitudeStd

### Angular measurements 
*	AngleBodyAccelerationMean
*	AngleBodyAccelerometerJerkMean
*	AngleBodyGyroMean
*	AngleBodyGyroAccelerometerJerkMean
*	AngleX
*	AngleY
*	AngleZ

