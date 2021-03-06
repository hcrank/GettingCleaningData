---
title: "codebook.MD"
author: "Herman Crank"
date: "Sunday, October 26, 2014"
---
CODEBOOK

##Original Varible Decription
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values.
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

## Mapping original variables to tidydata variables
###        Original Name		        Tidydata Variable
*	tBodyAcc-mean()-X	   ==>   	BodyAccelerationMeanX
*	tBodyAcc-mean()-Y	   ==>   	BodyAccelerationMeanY
*	tBodyAcc-mean()-Z	   ==>   	BodyAccelerationMeanZ
*	tBodyAcc-std()-X	   ==>   	BodyAccelerationStdX
*	tBodyAcc-std()-Y	   ==>   	BodyAccelerationStdY
*	tBodyAcc-std()-Z	   ==>   	BodyAccelerationStdZ
*	tGravityAcc-mean()-X	   ==>   	GravityAccelerationMeanX
*	tGravityAcc-mean()-Y	   ==>   	GravityAccelerationMeanY
*	tGravityAcc-mean()-Z	   ==>   	GravityAccelerationMeanZ
*	tGravityAcc-std()-X	   ==>   	GravityAccelerationStdX
*	tGravityAcc-std()-Y	   ==>   	GravityAccelerationStdY
*	tGravityAcc-std()-Z	   ==>   	GravityAccelerationStdZ
*	tBodyAccJerk-mean()-X	   ==>   	BodyAccelerometerJerkMeanX
*	tBodyAccJerk-mean()-Y	   ==>   	BodyAccelerometerJerkMeanY
*	tBodyAccJerk-mean()-Z	   ==>   	BodyAccelerometerJerkMeanZ
*	tBodyAccJerk-std()-X	   ==>   	BodyAccelerometerJerkStdX
*	tBodyAccJerk-std()-Y	   ==>   	BodyAccelerometerJerkStdY
*	tBodyAccJerk-std()-Z	   ==>   	BodyAccelerometerJerkStdZ
*	tBodyGyro-mean()-X	   ==>   	BodyGyroMeanX
*	tBodyGyro-mean()-Y	   ==>   	BodyGyroMeanY
*	tBodyGyro-mean()-Z	   ==>   	BodyGyroMeanZ
*	tBodyGyro-std()-X	   ==>   	BodyGyroStdX
*	tBodyGyro-std()-Y	   ==>   	BodyGyroStdY
*	tBodyGyro-std()-Z	   ==>   	BodyGyroStdZ
*	tBodyGyroJerk-mean()-X	   ==>   	BodyGyroAccelerometerJerkMeanX
*	tBodyGyroJerk-mean()-Y	   ==>   	BodyGyroAccelerometerJerkMeanY
*	tBodyGyroJerk-mean()-Z	   ==>   	BodyGyroAccelerometerJerkMeanZ
*	tBodyGyroJerk-std()-X	   ==>   	BodyGyroAccelerometerJerkStdX
*	tBodyGyroJerk-std()-Y	   ==>   	BodyGyroAccelerometerJerkStdY
*	tBodyGyroJerk-std()-Z	   ==>   	BodyGyroAccelerometerJerkStdZ
*	tBodyAccMag-mean()	   ==>   	BodyAccelerationMagnitudeMean
*	tBodyAccMag-std()	   ==>   	BodyAccelerationMagnitudeStd
*	tGravityAccMag-mean()	   ==>   	GravityAccelerationMagnitudeMean
*	tGravityAccMag-std()	   ==>   	GravityAccelerationMagnitudeStd
*	tBodyAccJerkMag-mean()	   ==>   	BodyAccelerometerJerkMagnitudeMean
*	tBodyAccJerkMag-std()	   ==>   	BodyAccelerometerJerkMagnitudeStd
*	tBodyGyroMag-mean()	   ==>   	BodyGyroMagnitudeMean
*	tBodyGyroMag-std()	   ==>   	BodyGyroMagnitudeStd
*	tBodyGyroJerkMag-mean()	   ==>   	BodyGyroAccelerometerJerkMagnitudeMean
*	tBodyGyroJerkMag-std()	   ==>   	BodyGyroAccelerometerJerkMagnitudeStd
*	fBodyAcc-mean()-X	   ==>   	FFTBodyAccelerationMeanX
*	fBodyAcc-mean()-Y	   ==>   	FFTBodyAccelerationMeanY
*	fBodyAcc-mean()-Z	   ==>   	FFTBodyAccelerationMeanZ
*	fBodyAcc-std()-X	   ==>   	FFTBodyAccelerationStdX
*	fBodyAcc-std()-Y	   ==>   	FFTBodyAccelerationStdY
*	fBodyAcc-std()-Z	   ==>   	FFTBodyAccelerationStdZ
*	fBodyAccJerk-mean()-X	   ==>   	FFTBodyAccelerometerJerkMeanX
*	fBodyAccJerk-mean()-Y	   ==>   	FFTBodyAccelerometerJerkMeanY
*	fBodyAccJerk-mean()-Z	   ==>   	FFTBodyAccelerometerJerkMeanZ
*	fBodyAccJerk-std()-X	   ==>   	FFTBodyAccelerometerJerkStdX
*	fBodyAccJerk-std()-Y	   ==>   	FFTBodyAccelerometerJerkStdY
*	fBodyAccJerk-std()-Z	   ==>   	FFTBodyAccelerometerJerkStdZ
*	fBodyGyro-mean()-X	   ==>   	FFTBodyGyroMeanX
*	fBodyGyro-mean()-Y	   ==>   	FFTBodyGyroMeanY
*	fBodyGyro-mean()-Z	   ==>   	FFTBodyGyroMeanZ
*	fBodyGyro-std()-X	   ==>   	FFTBodyGyroStdX
*	fBodyGyro-std()-Y	   ==>   	FFTBodyGyroStdY
*	fBodyGyro-std()-Z	   ==>   	FFTBodyGyroStdZ
*	fBodyAccMag-mean()	   ==>   	FFTBodyAccelerationMagnitudeMean
*	fBodyAccMag-std()	   ==>   	FFTBodyAccelerationMagnitudeStd
*	angle(tBodyAccMean,gravity)	   ==>   	AngleBodyAccelerationMean
*	angle(tBodyAccJerkMean),gravityMean)	   ==>   	AngleBodyAccelerometerJerkMean
*	angle(tBodyGyroMean,gravityMean)	   ==>   	AngleBodyGyroMean
*	angle(tBodyGyroJerkMean,gravityMean)	   ==>   	AngleBodyGyroAccelerometerJerkMean
*	angle(X,gravityMean)	   ==>   	AngleX
*	angle(Y,gravityMean)	   ==>   	AngleY
*	angle(Z,gravityMean)	   ==>   	AngleZ

## Variable dropped during analysis
###        Names
*	tBodyAcc-mad()-X
*	tBodyAcc-mad()-Y
*	tBodyAcc-mad()-Z
*	tBodyAcc-max()-X
*	tBodyAcc-max()-Y
*	tBodyAcc-max()-Z
*	tBodyAcc-min()-X
*	tBodyAcc-min()-Y
*	tBodyAcc-min()-Z
*	tBodyAcc-sma()
*	tBodyAcc-energy()-X
*	tBodyAcc-energy()-Y
*	tBodyAcc-energy()-Z
*	tBodyAcc-iqr()-X
*	tBodyAcc-iqr()-Y
*	tBodyAcc-iqr()-Z
*	tBodyAcc-entropy()-X
*	tBodyAcc-entropy()-Y
*	tBodyAcc-entropy()-Z
*	tBodyAcc-arCoeff()-X,1
*	tBodyAcc-arCoeff()-X,2
*	tBodyAcc-arCoeff()-X,3
*	tBodyAcc-arCoeff()-X,4
*	tBodyAcc-arCoeff()-Y,1
*	tBodyAcc-arCoeff()-Y,2
*	tBodyAcc-arCoeff()-Y,3
*	tBodyAcc-arCoeff()-Y,4
*	tBodyAcc-arCoeff()-Z,1
*	tBodyAcc-arCoeff()-Z,2
*	tBodyAcc-arCoeff()-Z,3
*	tBodyAcc-arCoeff()-Z,4
*	tBodyAcc-correlation()-X,Y
*	tBodyAcc-correlation()-X,Z
*	tBodyAcc-correlation()-Y,Z
*	tGravityAcc-mad()-X
*	tGravityAcc-mad()-Y
*	tGravityAcc-mad()-Z
*	tGravityAcc-max()-X
*	tGravityAcc-max()-Y
*	tGravityAcc-max()-Z
*	tGravityAcc-min()-X
*	tGravityAcc-min()-Y
*	tGravityAcc-min()-Z
*	tGravityAcc-sma()
*	tGravityAcc-energy()-X
*	tGravityAcc-energy()-Y
*	tGravityAcc-energy()-Z
*	tGravityAcc-iqr()-X
*	tGravityAcc-iqr()-Y
*	tGravityAcc-iqr()-Z
*	tGravityAcc-entropy()-X
*	tGravityAcc-entropy()-Y
*	tGravityAcc-entropy()-Z
*	tGravityAcc-arCoeff()-X,1
*	tGravityAcc-arCoeff()-X,2
*	tGravityAcc-arCoeff()-X,3
*	tGravityAcc-arCoeff()-X,4
*	tGravityAcc-arCoeff()-Y,1
*	tGravityAcc-arCoeff()-Y,2
*	tGravityAcc-arCoeff()-Y,3
*	tGravityAcc-arCoeff()-Y,4
*	tGravityAcc-arCoeff()-Z,1
*	tGravityAcc-arCoeff()-Z,2
*	tGravityAcc-arCoeff()-Z,3
*	tGravityAcc-arCoeff()-Z,4
*	tGravityAcc-correlation()-X,Y
*	tGravityAcc-correlation()-X,Z
*	tGravityAcc-correlation()-Y,Z
*	tBodyAccJerk-mad()-X
*	tBodyAccJerk-mad()-Y
*	tBodyAccJerk-mad()-Z
*	tBodyAccJerk-max()-X
*	tBodyAccJerk-max()-Y
*	tBodyAccJerk-max()-Z
*	tBodyAccJerk-min()-X
*	tBodyAccJerk-min()-Y
*	tBodyAccJerk-min()-Z
*	tBodyAccJerk-sma()
*	tBodyAccJerk-energy()-X
*	tBodyAccJerk-energy()-Y
*	tBodyAccJerk-energy()-Z
*	tBodyAccJerk-iqr()-X
*	tBodyAccJerk-iqr()-Y
*	tBodyAccJerk-iqr()-Z
*	tBodyAccJerk-entropy()-X
*	tBodyAccJerk-entropy()-Y
*	tBodyAccJerk-entropy()-Z
*	tBodyAccJerk-arCoeff()-X,1
*	tBodyAccJerk-arCoeff()-X,2
*	tBodyAccJerk-arCoeff()-X,3
*	tBodyAccJerk-arCoeff()-X,4
*	tBodyAccJerk-arCoeff()-Y,1
*	tBodyAccJerk-arCoeff()-Y,2
*	tBodyAccJerk-arCoeff()-Y,3
*	tBodyAccJerk-arCoeff()-Y,4
*	tBodyAccJerk-arCoeff()-Z,1
*	tBodyAccJerk-arCoeff()-Z,2
*	tBodyAccJerk-arCoeff()-Z,3
*	tBodyAccJerk-arCoeff()-Z,4
*	tBodyAccJerk-correlation()-X,Y
*	tBodyAccJerk-correlation()-X,Z
*	tBodyAccJerk-correlation()-Y,Z
*	tBodyGyro-mad()-X
*	tBodyGyro-mad()-Y
*	tBodyGyro-mad()-Z
*	tBodyGyro-max()-X
*	tBodyGyro-max()-Y
*	tBodyGyro-max()-Z
*	tBodyGyro-min()-X
*	tBodyGyro-min()-Y
*	tBodyGyro-min()-Z
*	tBodyGyro-sma()
*	tBodyGyro-energy()-X
*	tBodyGyro-energy()-Y
*	tBodyGyro-energy()-Z
*	tBodyGyro-iqr()-X
*	tBodyGyro-iqr()-Y
*	tBodyGyro-iqr()-Z
*	tBodyGyro-entropy()-X
*	tBodyGyro-entropy()-Y
*	tBodyGyro-entropy()-Z
*	tBodyGyro-arCoeff()-X,1
*	tBodyGyro-arCoeff()-X,2
*	tBodyGyro-arCoeff()-X,3
*	tBodyGyro-arCoeff()-X,4
*	tBodyGyro-arCoeff()-Y,1
*	tBodyGyro-arCoeff()-Y,2
*	tBodyGyro-arCoeff()-Y,3
*	tBodyGyro-arCoeff()-Y,4
*	tBodyGyro-arCoeff()-Z,1
*	tBodyGyro-arCoeff()-Z,2
*	tBodyGyro-arCoeff()-Z,3
*	tBodyGyro-arCoeff()-Z,4
*	tBodyGyro-correlation()-X,Y
*	tBodyGyro-correlation()-X,Z
*	tBodyGyro-correlation()-Y,Z
*	tBodyGyroJerk-mad()-X
*	tBodyGyroJerk-mad()-Y
*	tBodyGyroJerk-mad()-Z
*	tBodyGyroJerk-max()-X
*	tBodyGyroJerk-max()-Y
*	tBodyGyroJerk-max()-Z
*	tBodyGyroJerk-min()-X
*	tBodyGyroJerk-min()-Y
*	tBodyGyroJerk-min()-Z
*	tBodyGyroJerk-sma()
*	tBodyGyroJerk-energy()-X
*	tBodyGyroJerk-energy()-Y
*	tBodyGyroJerk-energy()-Z
*	tBodyGyroJerk-iqr()-X
*	tBodyGyroJerk-iqr()-Y
*	tBodyGyroJerk-iqr()-Z
*	tBodyGyroJerk-entropy()-X
*	tBodyGyroJerk-entropy()-Y
*	tBodyGyroJerk-entropy()-Z
*	tBodyGyroJerk-arCoeff()-X,1
*	tBodyGyroJerk-arCoeff()-X,2
*	tBodyGyroJerk-arCoeff()-X,3
*	tBodyGyroJerk-arCoeff()-X,4
*	tBodyGyroJerk-arCoeff()-Y,1
*	tBodyGyroJerk-arCoeff()-Y,2
*	tBodyGyroJerk-arCoeff()-Y,3
*	tBodyGyroJerk-arCoeff()-Y,4
*	tBodyGyroJerk-arCoeff()-Z,1
*	tBodyGyroJerk-arCoeff()-Z,2
*	tBodyGyroJerk-arCoeff()-Z,3
*	tBodyGyroJerk-arCoeff()-Z,4
*	tBodyGyroJerk-correlation()-X,Y
*	tBodyGyroJerk-correlation()-X,Z
*	tBodyGyroJerk-correlation()-Y,Z
*	tBodyAccMag-mad()
*	tBodyAccMag-max()
*	tBodyAccMag-min()
*	tBodyAccMag-sma()
*	tBodyAccMag-energy()
*	tBodyAccMag-iqr()
*	tBodyAccMag-entropy()
*	tBodyAccMag-arCoeff()1
*	tBodyAccMag-arCoeff()2
*	tBodyAccMag-arCoeff()3
*	tBodyAccMag-arCoeff()4
*	tGravityAccMag-mad()
*	tGravityAccMag-max()
*	tGravityAccMag-min()
*	tGravityAccMag-sma()
*	tGravityAccMag-energy()
*	tGravityAccMag-iqr()
*	tGravityAccMag-entropy()
*	tGravityAccMag-arCoeff()1
*	tGravityAccMag-arCoeff()2
*	tGravityAccMag-arCoeff()3
*	tGravityAccMag-arCoeff()4
*	tBodyAccJerkMag-mad()
*	tBodyAccJerkMag-max()
*	tBodyAccJerkMag-min()
*	tBodyAccJerkMag-sma()
*	tBodyAccJerkMag-energy()
*	tBodyAccJerkMag-iqr()
*	tBodyAccJerkMag-entropy()
*	tBodyAccJerkMag-arCoeff()1
*	tBodyAccJerkMag-arCoeff()2
*	tBodyAccJerkMag-arCoeff()3
*	tBodyAccJerkMag-arCoeff()4
*	tBodyGyroMag-mad()
*	tBodyGyroMag-max()
*	tBodyGyroMag-min()
*	tBodyGyroMag-sma()
*	tBodyGyroMag-energy()
*	tBodyGyroMag-iqr()
*	tBodyGyroMag-entropy()
*	tBodyGyroMag-arCoeff()1
*	tBodyGyroMag-arCoeff()2
*	tBodyGyroMag-arCoeff()3
*	tBodyGyroMag-arCoeff()4
*	tBodyGyroJerkMag-mad()
*	tBodyGyroJerkMag-max()
*	tBodyGyroJerkMag-min()
*	tBodyGyroJerkMag-sma()
*	tBodyGyroJerkMag-energy()
*	tBodyGyroJerkMag-iqr()
*	tBodyGyroJerkMag-entropy()
*	tBodyGyroJerkMag-arCoeff()1
*	tBodyGyroJerkMag-arCoeff()2
*	tBodyGyroJerkMag-arCoeff()3
*	tBodyGyroJerkMag-arCoeff()4
*	fBodyAcc-mad()-X
*	fBodyAcc-mad()-Y
*	fBodyAcc-mad()-Z
*	fBodyAcc-max()-X
*	fBodyAcc-max()-Y
*	fBodyAcc-max()-Z
*	fBodyAcc-min()-X
*	fBodyAcc-min()-Y
*	fBodyAcc-min()-Z
*	fBodyAcc-sma()
*	fBodyAcc-energy()-X
*	fBodyAcc-energy()-Y
*	fBodyAcc-energy()-Z
*	fBodyAcc-iqr()-X
*	fBodyAcc-iqr()-Y
*	fBodyAcc-iqr()-Z
*	fBodyAcc-entropy()-X
*	fBodyAcc-entropy()-Y
*	fBodyAcc-entropy()-Z
*	fBodyAcc-maxInds-X
*	fBodyAcc-maxInds-Y
*	fBodyAcc-maxInds-Z
*	fBodyAcc-meanFreq()-X
*	fBodyAcc-meanFreq()-Y
*	fBodyAcc-meanFreq()-Z
*	fBodyAcc-skewness()-X
*	fBodyAcc-kurtosis()-X
*	fBodyAcc-skewness()-Y
*	fBodyAcc-kurtosis()-Y
*	fBodyAcc-skewness()-Z
*	fBodyAcc-kurtosis()-Z
*	fBodyAcc-bandsEnergy()-1,8
*	fBodyAcc-bandsEnergy()-9,16
*	fBodyAcc-bandsEnergy()-17,24
*	fBodyAcc-bandsEnergy()-25,32
*	fBodyAcc-bandsEnergy()-33,40
*	fBodyAcc-bandsEnergy()-41,48
*	fBodyAcc-bandsEnergy()-49,56
*	fBodyAcc-bandsEnergy()-57,64
*	fBodyAcc-bandsEnergy()-1,16
*	fBodyAcc-bandsEnergy()-17,32
*	fBodyAcc-bandsEnergy()-33,48
*	fBodyAcc-bandsEnergy()-49,64
*	fBodyAcc-bandsEnergy()-1,24
*	fBodyAcc-bandsEnergy()-25,48
*	fBodyAcc-bandsEnergy()-1,8
*	fBodyAcc-bandsEnergy()-9,16
*	fBodyAcc-bandsEnergy()-17,24
*	fBodyAcc-bandsEnergy()-25,32
*	fBodyAcc-bandsEnergy()-33,40
*	fBodyAcc-bandsEnergy()-41,48
*	fBodyAcc-bandsEnergy()-49,56
*	fBodyAcc-bandsEnergy()-57,64
*	fBodyAcc-bandsEnergy()-1,16
*	fBodyAcc-bandsEnergy()-17,32
*	fBodyAcc-bandsEnergy()-33,48
*	fBodyAcc-bandsEnergy()-49,64
*	fBodyAcc-bandsEnergy()-1,24
*	fBodyAcc-bandsEnergy()-25,48
*	fBodyAcc-bandsEnergy()-1,8
*	fBodyAcc-bandsEnergy()-9,16
*	fBodyAcc-bandsEnergy()-17,24
*	fBodyAcc-bandsEnergy()-25,32
*	fBodyAcc-bandsEnergy()-33,40
*	fBodyAcc-bandsEnergy()-41,48
*	fBodyAcc-bandsEnergy()-49,56
*	fBodyAcc-bandsEnergy()-57,64
*	fBodyAcc-bandsEnergy()-1,16
*	fBodyAcc-bandsEnergy()-17,32
*	fBodyAcc-bandsEnergy()-33,48
*	fBodyAcc-bandsEnergy()-49,64
*	fBodyAcc-bandsEnergy()-1,24
*	fBodyAcc-bandsEnergy()-25,48
*	fBodyAccJerk-mad()-X
*	fBodyAccJerk-mad()-Y
*	fBodyAccJerk-mad()-Z
*	fBodyAccJerk-max()-X
*	fBodyAccJerk-max()-Y
*	fBodyAccJerk-max()-Z
*	fBodyAccJerk-min()-X
*	fBodyAccJerk-min()-Y
*	fBodyAccJerk-min()-Z
*	fBodyAccJerk-sma()
*	fBodyAccJerk-energy()-X
*	fBodyAccJerk-energy()-Y
*	fBodyAccJerk-energy()-Z
*	fBodyAccJerk-iqr()-X
*	fBodyAccJerk-iqr()-Y
*	fBodyAccJerk-iqr()-Z
*	fBodyAccJerk-entropy()-X
*	fBodyAccJerk-entropy()-Y
*	fBodyAccJerk-entropy()-Z
*	fBodyAccJerk-maxInds-X
*	fBodyAccJerk-maxInds-Y
*	fBodyAccJerk-maxInds-Z
*	fBodyAccJerk-meanFreq()-X
*	fBodyAccJerk-meanFreq()-Y
*	fBodyAccJerk-meanFreq()-Z
*	fBodyAccJerk-skewness()-X
*	fBodyAccJerk-kurtosis()-X
*	fBodyAccJerk-skewness()-Y
*	fBodyAccJerk-kurtosis()-Y
*	fBodyAccJerk-skewness()-Z
*	fBodyAccJerk-kurtosis()-Z
*	fBodyAccJerk-bandsEnergy()-1,8
*	fBodyAccJerk-bandsEnergy()-9,16
*	fBodyAccJerk-bandsEnergy()-17,24
*	fBodyAccJerk-bandsEnergy()-25,32
*	fBodyAccJerk-bandsEnergy()-33,40
*	fBodyAccJerk-bandsEnergy()-41,48
*	fBodyAccJerk-bandsEnergy()-49,56
*	fBodyAccJerk-bandsEnergy()-57,64
*	fBodyAccJerk-bandsEnergy()-1,16
*	fBodyAccJerk-bandsEnergy()-17,32
*	fBodyAccJerk-bandsEnergy()-33,48
*	fBodyAccJerk-bandsEnergy()-49,64
*	fBodyAccJerk-bandsEnergy()-1,24
*	fBodyAccJerk-bandsEnergy()-25,48
*	fBodyAccJerk-bandsEnergy()-1,8
*	fBodyAccJerk-bandsEnergy()-9,16
*	fBodyAccJerk-bandsEnergy()-17,24
*	fBodyAccJerk-bandsEnergy()-25,32
*	fBodyAccJerk-bandsEnergy()-33,40
*	fBodyAccJerk-bandsEnergy()-41,48
*	fBodyAccJerk-bandsEnergy()-49,56
*	fBodyAccJerk-bandsEnergy()-57,64
*	fBodyAccJerk-bandsEnergy()-1,16
*	fBodyAccJerk-bandsEnergy()-17,32
*	fBodyAccJerk-bandsEnergy()-33,48
*	fBodyAccJerk-bandsEnergy()-49,64
*	fBodyAccJerk-bandsEnergy()-1,24
*	fBodyAccJerk-bandsEnergy()-25,48
*	fBodyAccJerk-bandsEnergy()-1,8
*	fBodyAccJerk-bandsEnergy()-9,16
*	fBodyAccJerk-bandsEnergy()-17,24
*	fBodyAccJerk-bandsEnergy()-25,32
*	fBodyAccJerk-bandsEnergy()-33,40
*	fBodyAccJerk-bandsEnergy()-41,48
*	fBodyAccJerk-bandsEnergy()-49,56
*	fBodyAccJerk-bandsEnergy()-57,64
*	fBodyAccJerk-bandsEnergy()-1,16
*	fBodyAccJerk-bandsEnergy()-17,32
*	fBodyAccJerk-bandsEnergy()-33,48
*	fBodyAccJerk-bandsEnergy()-49,64
*	fBodyAccJerk-bandsEnergy()-1,24
*	fBodyAccJerk-bandsEnergy()-25,48
*	fBodyGyro-mad()-X
*	fBodyGyro-mad()-Y
*	fBodyGyro-mad()-Z
*	fBodyGyro-max()-X
*	fBodyGyro-max()-Y
*	fBodyGyro-max()-Z
*	fBodyGyro-min()-X
*	fBodyGyro-min()-Y
*	fBodyGyro-min()-Z
*	fBodyGyro-sma()
*	fBodyGyro-energy()-X
*	fBodyGyro-energy()-Y
*	fBodyGyro-energy()-Z
*	fBodyGyro-iqr()-X
*	fBodyGyro-iqr()-Y
*	fBodyGyro-iqr()-Z
*	fBodyGyro-entropy()-X
*	fBodyGyro-entropy()-Y
*	fBodyGyro-entropy()-Z
*	fBodyGyro-maxInds-X
*	fBodyGyro-maxInds-Y
*	fBodyGyro-maxInds-Z
*	fBodyGyro-meanFreq()-X
*	fBodyGyro-meanFreq()-Y
*	fBodyGyro-meanFreq()-Z
*	fBodyGyro-skewness()-X
*	fBodyGyro-kurtosis()-X
*	fBodyGyro-skewness()-Y
*	fBodyGyro-kurtosis()-Y
*	fBodyGyro-skewness()-Z
*	fBodyGyro-kurtosis()-Z
*	fBodyGyro-bandsEnergy()-1,8
*	fBodyGyro-bandsEnergy()-9,16
*	fBodyGyro-bandsEnergy()-17,24
*	fBodyGyro-bandsEnergy()-25,32
*	fBodyGyro-bandsEnergy()-33,40
*	fBodyGyro-bandsEnergy()-41,48
*	fBodyGyro-bandsEnergy()-49,56
*	fBodyGyro-bandsEnergy()-57,64
*	fBodyGyro-bandsEnergy()-1,16
*	fBodyGyro-bandsEnergy()-17,32
*	fBodyGyro-bandsEnergy()-33,48
*	fBodyGyro-bandsEnergy()-49,64
*	fBodyGyro-bandsEnergy()-1,24
*	fBodyGyro-bandsEnergy()-25,48
*	fBodyGyro-bandsEnergy()-1,8
*	fBodyGyro-bandsEnergy()-9,16
*	fBodyGyro-bandsEnergy()-17,24
*	fBodyGyro-bandsEnergy()-25,32
*	fBodyGyro-bandsEnergy()-33,40
*	fBodyGyro-bandsEnergy()-41,48
*	fBodyGyro-bandsEnergy()-49,56
*	fBodyGyro-bandsEnergy()-57,64
*	fBodyGyro-bandsEnergy()-1,16
*	fBodyGyro-bandsEnergy()-17,32
*	fBodyGyro-bandsEnergy()-33,48
*	fBodyGyro-bandsEnergy()-49,64
*	fBodyGyro-bandsEnergy()-1,24
*	fBodyGyro-bandsEnergy()-25,48
*	fBodyGyro-bandsEnergy()-1,8
*	fBodyGyro-bandsEnergy()-9,16
*	fBodyGyro-bandsEnergy()-17,24
*	fBodyGyro-bandsEnergy()-25,32
*	fBodyGyro-bandsEnergy()-33,40
*	fBodyGyro-bandsEnergy()-41,48
*	fBodyGyro-bandsEnergy()-49,56
*	fBodyGyro-bandsEnergy()-57,64
*	fBodyGyro-bandsEnergy()-1,16
*	fBodyGyro-bandsEnergy()-17,32
*	fBodyGyro-bandsEnergy()-33,48
*	fBodyGyro-bandsEnergy()-49,64
*	fBodyGyro-bandsEnergy()-1,24
*	fBodyGyro-bandsEnergy()-25,48
*	fBodyAccMag-mad()
*	fBodyAccMag-max()
*	fBodyAccMag-min()
*	fBodyAccMag-sma()
*	fBodyAccMag-energy()
*	fBodyAccMag-iqr()
*	fBodyAccMag-entropy()
*	fBodyAccMag-maxInds
*	fBodyAccMag-meanFreq()
*	fBodyAccMag-skewness()
*	fBodyAccMag-kurtosis()
*	fBodyBodyAccJerkMag-mean()
*	fBodyBodyAccJerkMag-std()
*	fBodyBodyAccJerkMag-mad()
*	fBodyBodyAccJerkMag-max()
*	fBodyBodyAccJerkMag-min()
*	fBodyBodyAccJerkMag-sma()
*	fBodyBodyAccJerkMag-energy()
*	fBodyBodyAccJerkMag-iqr()
*	fBodyBodyAccJerkMag-entropy()
*	fBodyBodyAccJerkMag-maxInds
*	fBodyBodyAccJerkMag-meanFreq()
*	fBodyBodyAccJerkMag-skewness()
*	fBodyBodyAccJerkMag-kurtosis()
*	fBodyBodyGyroMag-mean()
*	fBodyBodyGyroMag-std()
*	fBodyBodyGyroMag-mad()
*	fBodyBodyGyroMag-max()
*	fBodyBodyGyroMag-min()
*	fBodyBodyGyroMag-sma()
*	fBodyBodyGyroMag-energy()
*	fBodyBodyGyroMag-iqr()
*	fBodyBodyGyroMag-entropy()
*	fBodyBodyGyroMag-maxInds
*	fBodyBodyGyroMag-meanFreq()
*	fBodyBodyGyroMag-skewness()
*	fBodyBodyGyroMag-kurtosis()
*	fBodyBodyGyroJerkMag-mean()
*	fBodyBodyGyroJerkMag-std()
*	fBodyBodyGyroJerkMag-mad()
*	fBodyBodyGyroJerkMag-max()
*	fBodyBodyGyroJerkMag-min()
*	fBodyBodyGyroJerkMag-sma()
*	fBodyBodyGyroJerkMag-energy()
*	fBodyBodyGyroJerkMag-iqr()
*	fBodyBodyGyroJerkMag-entropy()
*	fBodyBodyGyroJerkMag-maxInds
*	fBodyBodyGyroJerkMag-meanFreq()
*	fBodyBodyGyroJerkMag-skewness()
*	fBodyBodyGyroJerkMag-kurtosis()
		

