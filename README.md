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
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Assigns descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Using the data set from step 4 of run_analysis.R , creates a independent tidy data set with the average of each variable for each activity and each subject.
