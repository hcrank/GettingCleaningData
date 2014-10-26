## R script:  run_analysis.R does the following;
##      1. Merges the training and the test sets to create one data set.
##      2. Extracts only the measurements on the mean and standard deviation for
##         each measurement. 
##      3. Uses descriptive activity names to name the activities in the data set
##      4. Appropriately labels the data set with descriptive variable names. 
##      5. Using the data set from step 4 of run_analysis.R , creates a second, 
##         independent tidy data set with the average of each variable for each 
##         activity and each subject.
##

##
##  PART 0 -  Get data 
##
## Create project_data directory and unzip 
if(!file.exists("project_data")){dir.create("project_data")}
setwd(".//project_data")

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "projectdata.zip")  ## curl not need for Windows
list.files()  ## content of directory 
dateDownloaded <- date()
dateDownloaded

unzip("projectdata.zip") ## in working directory

##
##  PART 1 - Merge data sets
##
## Install necessary packages (Data Table)
install.packages("data.table") ## Install data.table package
library(data.table)

## Get subjects(test)
subjects <- fread(".//UCI HAR Dataset//test//subject_test.txt",
                  colClasses=c("subjects"))
setnames(subjects,c("subject"))

## get activities(test)
activities <- fread(".//UCI HAR Dataset//test//y_test.txt") 
setnames(activities,c("activity"))

##  Read data column names (features.txt)
featurenames <- read.table(".//UCI HAR Dataset//features.txt",
                           col.names=c("index","varname")) 

## get data(test) 
## *** fread() has a problem use read.table add column names from
## *** features
## convert to as data.table
testdata <- read.table(".//UCI HAR Dataset//test//X_test.txt",
                       col.names=featurenames[,"varname"])

## convert to data table 
## added subject and activities 
testDT <- data.table(testdata, keep.rownames=FALSE)
testDT[,subjects:=subjects][,activities:=activities] 

##
## Repeat process for training data
##
## Get subjects(training)
subjects <- fread(".//UCI HAR Dataset//train//subject_train.txt",
                  colClasses=c("subjects"))
setnames(subjects,c("subject"))

## get activities(training)
activities <- fread(".//UCI HAR Dataset//train//y_train.txt") 
setnames(activities,c("activity"))

## get training data and add column names from features
## assuming feature names align to columns in training data set
## convert to data.table
traindata <- read.table(".//UCI HAR Dataset//train//X_train.txt",
                        col.names=featurenames[,"varname"])
trainDT <- data.table(traindata, keep.rownames=FALSE)

## add subjects and activities
trainDT[,subjects:=subjects][,activities:=activities] 

## row bind training and test data tables by column name
## rbindlist(l, use.names=fill, fill=FALSE)
l = list(testDT,trainDT)
CompleteDT <- rbindlist(l, use.names=TRUE)

##
##  PART 2 - Reduce data set to only elements of interest
##  phase 1: varibles containing 'mean'|'Mean'|'STD' |'activities'|'subject'
##
f1 <- CompleteDT[, which(grepl("mean|std|Mean|activities|subjects", 
                               colnames(CompleteDT))),with=FALSE]
##  phase 2:  drop unnecessary Frequency variables
##  meanFreq and BodyBody
##  Can I combine witht the grepl above??
f2 <- f1[, which(!grepl("meanFreq|BodyBody", 
                       colnames(f1))),with=FALSE]

##
##  PART 3 - Label activities value 1-6 to standing, walking, etc...
##  Apply activity labels to activities
##
actlabels <- fread(".//UCI HAR Dataset//activity_labels.txt") 
setnames(actlabels,c("index","activity"))
f2 <- f2[,activities:= actlabels[f2$activities,activity]]

##
##  PART 4 - Apply descriptive names to column names
##  Remove "." "()-", "-", '(t', last char '()', 
##          ',grav...)first char 't's
##  Change first char'f's to 'FFT' 
##         'std' to 'Std', 'mean' to 'Mean'
##         'Acc' to 'Acceleration' for all except for those containing 'Jerk'
##         'Acc' to 'Accelerometer' for all containing 'Jerk'
##         'angle' to 'Angle'
## 
l <- names(f2)
l <- gsub("\\.","",l)
l <- sub("^t","",l)
l <- sub("^f","FFT",l)
l <- sub("std", "Std", l)
l <- sub("mean", "Mean", l)
l <- sub("Acc", "Acceleration", l)
l <- sub("AccelerationJ", "AccelerometerJ", l)
l <- sub("GyroJerk", "GyroAccelerometerJerk", l)
l <- sub("Mag", "Magnitude", l)
l <- sub("^(angle|anglet)", "Angle", l)
l <- sub("(gravityMean|gravity)$","",l)

##  Rename column names
setnames(f2,names(f2),l)

##
##  PART 5 - data set with the average of each variable for each activity and 
##           each subject.  Write data out to txt file
##
f2groupby <- c("subjects","activities")
setkeyv(f2,f2groupby)
tidydata <- f2[,lapply(.SD, mean), by=key(f2)]

## Write out tidy data set
write.table(tidydata,"tidydata.txt", row.names = FALSE)
