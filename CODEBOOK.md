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

mean(): Mean value

std(): Standard deviation

mad(): Median absolute deviation 

max(): Largest value in array

min(): Smallest value in array

sma(): Signal magnitude area

energy(): Energy measure. Sum of the squares divided by the number of values.

iqr(): Interquartile range 

entropy(): Signal entropy

arCoeff(): Autorregresion coefficients with Burg order equal to 4

correlation(): correlation coefficient between two signals

maxInds(): index of the frequency component with largest magnitude

meanFreq(): Weighted average of the frequency components to obtain a mean frequency

skewness(): skewness of the frequency domain signal 

kurtosis(): kurtosis of the frequency domain signal 

bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.

angle(): Angle between to vectors.


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

## Variable dropped during analysis
        Name		                Name
*	tBodyAcc-mad()-X		fBodyAcc-maxInds-Y
*	tBodyAcc-mad()-Y		fBodyAcc-maxInds-Z
*	tBodyAcc-mad()-Z		fBodyAcc-meanFreq()-X
*	tBodyAcc-max()-X		fBodyAcc-meanFreq()-Y
*	tBodyAcc-max()-Y		fBodyAcc-meanFreq()-Z
*	tBodyAcc-max()-Z		fBodyAcc-skewness()-X
*	tBodyAcc-min()-X		fBodyAcc-kurtosis()-X
*	tBodyAcc-min()-Y		fBodyAcc-skewness()-Y
*	tBodyAcc-min()-Z		fBodyAcc-kurtosis()-Y
*	tBodyAcc-sma()		        fBodyAcc-skewness()-Z
*	tBodyAcc-energy()-X		fBodyAcc-kurtosis()-Z
*	tBodyAcc-energy()-Y		fBodyAcc-bandsEnergy()-1,8
*	tBodyAcc-energy()-Z		fBodyAcc-bandsEnergy()-9,16
*	tBodyAcc-iqr()-X		fBodyAcc-bandsEnergy()-17,24
*	tBodyAcc-iqr()-Y		fBodyAcc-bandsEnergy()-25,32
*	tBodyAcc-iqr()-Z		fBodyAcc-bandsEnergy()-33,40
*	tBodyAcc-entropy()-X		fBodyAcc-bandsEnergy()-41,48
*	tBodyAcc-entropy()-Y		fBodyAcc-bandsEnergy()-49,56
*	tBodyAcc-entropy()-Z		fBodyAcc-bandsEnergy()-57,64
*	tBodyAcc-arCoeff()-X,1		fBodyAcc-bandsEnergy()-1,16
*	tBodyAcc-arCoeff()-X,2		fBodyAcc-bandsEnergy()-17,32
*	tBodyAcc-arCoeff()-X,3		fBodyAcc-bandsEnergy()-33,48
*	tBodyAcc-arCoeff()-X,4		fBodyAcc-bandsEnergy()-49,64
*	tBodyAcc-arCoeff()-Y,1		fBodyAcc-bandsEnergy()-1,24
*	tBodyAcc-arCoeff()-Y,2		fBodyAcc-bandsEnergy()-25,48
*	tBodyAcc-arCoeff()-Y,3		fBodyAcc-bandsEnergy()-1,8
*	tBodyAcc-arCoeff()-Y,4		fBodyAcc-bandsEnergy()-9,16
*	tBodyAcc-arCoeff()-Z,1		fBodyAcc-bandsEnergy()-17,24
*	tBodyAcc-arCoeff()-Z,2		fBodyAcc-bandsEnergy()-25,32
*	tBodyAcc-arCoeff()-Z,3		fBodyAcc-bandsEnergy()-33,40
*	tBodyAcc-arCoeff()-Z,4		fBodyAcc-bandsEnergy()-41,48
*	tBodyAcc-correlation()-X,Y		fBodyAcc-bandsEnergy()-49,56
*	tBodyAcc-correlation()-X,Z		fBodyAcc-bandsEnergy()-57,64
*	tBodyAcc-correlation()-Y,Z		fBodyAcc-bandsEnergy()-1,16
*	tGravityAcc-mad()-X		fBodyAcc-bandsEnergy()-17,32
*	tGravityAcc-mad()-Y		fBodyAcc-bandsEnergy()-33,48
*	tGravityAcc-mad()-Z		fBodyAcc-bandsEnergy()-49,64
*	tGravityAcc-max()-X		fBodyAcc-bandsEnergy()-1,24
*	tGravityAcc-max()-Y		fBodyAcc-bandsEnergy()-25,48
*	tGravityAcc-max()-Z		fBodyAcc-bandsEnergy()-1,8
*	tGravityAcc-min()-X		fBodyAcc-bandsEnergy()-9,16
*	tGravityAcc-min()-Y		fBodyAcc-bandsEnergy()-17,24
*	tGravityAcc-min()-Z		fBodyAcc-bandsEnergy()-25,32
*	tGravityAcc-sma()		fBodyAcc-bandsEnergy()-33,40
*	tGravityAcc-energy()-X		fBodyAcc-bandsEnergy()-41,48
*	tGravityAcc-energy()-Y		fBodyAcc-bandsEnergy()-49,56
*	tGravityAcc-energy()-Z		fBodyAcc-bandsEnergy()-57,64
*	tGravityAcc-iqr()-X		fBodyAcc-bandsEnergy()-1,16
*	tGravityAcc-iqr()-Y		fBodyAcc-bandsEnergy()-17,32
*	tGravityAcc-iqr()-Z		fBodyAcc-bandsEnergy()-33,48
*	tGravityAcc-entropy()-X		fBodyAcc-bandsEnergy()-49,64
*	tGravityAcc-entropy()-Y		fBodyAcc-bandsEnergy()-1,24
*	tGravityAcc-entropy()-Z		fBodyAcc-bandsEnergy()-25,48
*	tGravityAcc-arCoeff()-X,1		fBodyAccJerk-mad()-X
*	tGravityAcc-arCoeff()-X,2		fBodyAccJerk-mad()-Y
*	tGravityAcc-arCoeff()-X,3		fBodyAccJerk-mad()-Z
*	tGravityAcc-arCoeff()-X,4		fBodyAccJerk-max()-X
*	tGravityAcc-arCoeff()-Y,1		fBodyAccJerk-max()-Y
*	tGravityAcc-arCoeff()-Y,2		fBodyAccJerk-max()-Z
*	tGravityAcc-arCoeff()-Y,3		fBodyAccJerk-min()-X
*	tGravityAcc-arCoeff()-Y,4		fBodyAccJerk-min()-Y
*	tGravityAcc-arCoeff()-Z,1		fBodyAccJerk-min()-Z
*	tGravityAcc-arCoeff()-Z,2		fBodyAccJerk-sma()
*	tGravityAcc-arCoeff()-Z,3		fBodyAccJerk-energy()-X
*	tGravityAcc-arCoeff()-Z,4		fBodyAccJerk-energy()-Y
*	tGravityAcc-correlation()-X,Y		fBodyAccJerk-energy()-Z
*	tGravityAcc-correlation()-X,Z		fBodyAccJerk-iqr()-X
*	tGravityAcc-correlation()-Y,Z		fBodyAccJerk-iqr()-Y
*	tBodyAccJerk-mad()-X		fBodyAccJerk-iqr()-Z
*	tBodyAccJerk-mad()-Y		fBodyAccJerk-entropy()-X
*	tBodyAccJerk-mad()-Z		fBodyAccJerk-entropy()-Y
*	tBodyAccJerk-max()-X		fBodyAccJerk-entropy()-Z
*	tBodyAccJerk-max()-Y		fBodyAccJerk-maxInds-X
*	tBodyAccJerk-max()-Z		fBodyAccJerk-maxInds-Y
*	tBodyAccJerk-min()-X		fBodyAccJerk-maxInds-Z
*	tBodyAccJerk-min()-Y		fBodyAccJerk-meanFreq()-X
*	tBodyAccJerk-min()-Z		fBodyAccJerk-meanFreq()-Y
*	tBodyAccJerk-sma()		fBodyAccJerk-meanFreq()-Z
*	tBodyAccJerk-energy()-X		fBodyAccJerk-skewness()-X
*	tBodyAccJerk-energy()-Y		fBodyAccJerk-kurtosis()-X
*	tBodyAccJerk-energy()-Z		fBodyAccJerk-skewness()-Y
*	tBodyAccJerk-iqr()-X		fBodyAccJerk-kurtosis()-Y
*	tBodyAccJerk-iqr()-Y		fBodyAccJerk-skewness()-Z
*	tBodyAccJerk-iqr()-Z		fBodyAccJerk-kurtosis()-Z
*	tBodyAccJerk-entropy()-X		fBodyAccJerk-bandsEnergy()-1,8
*	tBodyAccJerk-entropy()-Y		fBodyAccJerk-bandsEnergy()-9,16
*	tBodyAccJerk-entropy()-Z		fBodyAccJerk-bandsEnergy()-17,24
*	tBodyAccJerk-arCoeff()-X,1		fBodyAccJerk-bandsEnergy()-25,32
*	tBodyAccJerk-arCoeff()-X,2		fBodyAccJerk-bandsEnergy()-33,40
*	tBodyAccJerk-arCoeff()-X,3		fBodyAccJerk-bandsEnergy()-41,48
*	tBodyAccJerk-arCoeff()-X,4		fBodyAccJerk-bandsEnergy()-49,56
*	tBodyAccJerk-arCoeff()-Y,1		fBodyAccJerk-bandsEnergy()-57,64
*	tBodyAccJerk-arCoeff()-Y,2		fBodyAccJerk-bandsEnergy()-1,16
*	tBodyAccJerk-arCoeff()-Y,3		fBodyAccJerk-bandsEnergy()-17,32
*	tBodyAccJerk-arCoeff()-Y,4		fBodyAccJerk-bandsEnergy()-33,48
*	tBodyAccJerk-arCoeff()-Z,1		fBodyAccJerk-bandsEnergy()-49,64
*	tBodyAccJerk-arCoeff()-Z,2		fBodyAccJerk-bandsEnergy()-1,24
*	tBodyAccJerk-arCoeff()-Z,3		fBodyAccJerk-bandsEnergy()-25,48
*	tBodyAccJerk-arCoeff()-Z,4		fBodyAccJerk-bandsEnergy()-1,8
*	tBodyAccJerk-correlation()-X,Y		fBodyAccJerk-bandsEnergy()-9,16
*	tBodyAccJerk-correlation()-X,Z		fBodyAccJerk-bandsEnergy()-17,24
*	tBodyAccJerk-correlation()-Y,Z		fBodyAccJerk-bandsEnergy()-25,32
*	tBodyGyro-mad()-X		fBodyAccJerk-bandsEnergy()-33,40
*	tBodyGyro-mad()-Y		fBodyAccJerk-bandsEnergy()-41,48
*	tBodyGyro-mad()-Z		fBodyAccJerk-bandsEnergy()-49,56
*	tBodyGyro-max()-X		fBodyAccJerk-bandsEnergy()-57,64
*	tBodyGyro-max()-Y		fBodyAccJerk-bandsEnergy()-1,16
*	tBodyGyro-max()-Z		fBodyAccJerk-bandsEnergy()-17,32
*	tBodyGyro-min()-X		fBodyAccJerk-bandsEnergy()-33,48
*	tBodyGyro-min()-Y		fBodyAccJerk-bandsEnergy()-49,64
*	tBodyGyro-min()-Z		fBodyAccJerk-bandsEnergy()-1,24
*	tBodyGyro-sma()		        fBodyAccJerk-bandsEnergy()-25,48
*	tBodyGyro-energy()-X		fBodyAccJerk-bandsEnergy()-1,8
*	tBodyGyro-energy()-Y		fBodyAccJerk-bandsEnergy()-9,16
*	tBodyGyro-energy()-Z		fBodyAccJerk-bandsEnergy()-17,24
*	tBodyGyro-iqr()-X		fBodyAccJerk-bandsEnergy()-25,32
*	tBodyGyro-iqr()-Y		fBodyAccJerk-bandsEnergy()-33,40
*	tBodyGyro-iqr()-Z		fBodyAccJerk-bandsEnergy()-41,48
*	tBodyGyro-entropy()-X		fBodyAccJerk-bandsEnergy()-49,56
*	tBodyGyro-entropy()-Y		fBodyAccJerk-bandsEnergy()-57,64
*	tBodyGyro-entropy()-Z		fBodyAccJerk-bandsEnergy()-1,16
*	tBodyGyro-arCoeff()-X,1		fBodyAccJerk-bandsEnergy()-17,32
*	tBodyGyro-arCoeff()-X,2		fBodyAccJerk-bandsEnergy()-33,48
*	tBodyGyro-arCoeff()-X,3		fBodyAccJerk-bandsEnergy()-49,64
*	tBodyGyro-arCoeff()-X,4		fBodyAccJerk-bandsEnergy()-1,24
*	tBodyGyro-arCoeff()-Y,1		fBodyAccJerk-bandsEnergy()-25,48
*	tBodyGyro-arCoeff()-Y,2		fBodyGyro-mad()-X
*	tBodyGyro-arCoeff()-Y,3		fBodyGyro-mad()-Y
*	tBodyGyro-arCoeff()-Y,4		fBodyGyro-mad()-Z
*	tBodyGyro-arCoeff()-Z,1		fBodyGyro-max()-X
*	tBodyGyro-arCoeff()-Z,2		fBodyGyro-max()-Y
*	tBodyGyro-arCoeff()-Z,3		fBodyGyro-max()-Z
*	tBodyGyro-arCoeff()-Z,4		fBodyGyro-min()-X
*	tBodyGyro-correlation()-X,Y		fBodyGyro-min()-Y
*	tBodyGyro-correlation()-X,Z		fBodyGyro-min()-Z
*	tBodyGyro-correlation()-Y,Z		fBodyGyro-sma()
*	tBodyGyroJerk-mad()-X		fBodyGyro-energy()-X
*	tBodyGyroJerk-mad()-Y		fBodyGyro-energy()-Y
*	tBodyGyroJerk-mad()-Z		fBodyGyro-energy()-Z
*	tBodyGyroJerk-max()-X		fBodyGyro-iqr()-X
*	tBodyGyroJerk-max()-Y		fBodyGyro-iqr()-Y
*	tBodyGyroJerk-max()-Z		fBodyGyro-iqr()-Z
*	tBodyGyroJerk-min()-X		fBodyGyro-entropy()-X
*	tBodyGyroJerk-min()-Y		fBodyGyro-entropy()-Y
*	tBodyGyroJerk-min()-Z		fBodyGyro-entropy()-Z
*	tBodyGyroJerk-sma()		fBodyGyro-maxInds-X
*	tBodyGyroJerk-energy()-X		fBodyGyro-maxInds-Y
*	tBodyGyroJerk-energy()-Y		fBodyGyro-maxInds-Z
*	tBodyGyroJerk-energy()-Z		fBodyGyro-meanFreq()-X
*	tBodyGyroJerk-iqr()-X		fBodyGyro-meanFreq()-Y
*	tBodyGyroJerk-iqr()-Y		fBodyGyro-meanFreq()-Z
*	tBodyGyroJerk-iqr()-Z		fBodyGyro-skewness()-X
*	tBodyGyroJerk-entropy()-X		fBodyGyro-kurtosis()-X
*	tBodyGyroJerk-entropy()-Y		fBodyGyro-skewness()-Y
*	tBodyGyroJerk-entropy()-Z		fBodyGyro-kurtosis()-Y
*	tBodyGyroJerk-arCoeff()-X,1		fBodyGyro-skewness()-Z
*	tBodyGyroJerk-arCoeff()-X,2		fBodyGyro-kurtosis()-Z
*	tBodyGyroJerk-arCoeff()-X,3		fBodyGyro-bandsEnergy()-1,8
*	tBodyGyroJerk-arCoeff()-X,4		fBodyGyro-bandsEnergy()-9,16
*	tBodyGyroJerk-arCoeff()-Y,1		fBodyGyro-bandsEnergy()-17,24
*	tBodyGyroJerk-arCoeff()-Y,2		fBodyGyro-bandsEnergy()-25,32
*	tBodyGyroJerk-arCoeff()-Y,3		fBodyGyro-bandsEnergy()-33,40
*	tBodyGyroJerk-arCoeff()-Y,4		fBodyGyro-bandsEnergy()-41,48
*	tBodyGyroJerk-arCoeff()-Z,1		fBodyGyro-bandsEnergy()-49,56
*	tBodyGyroJerk-arCoeff()-Z,2		fBodyGyro-bandsEnergy()-57,64
*	tBodyGyroJerk-arCoeff()-Z,3		fBodyGyro-bandsEnergy()-1,16
*	tBodyGyroJerk-arCoeff()-Z,4		fBodyGyro-bandsEnergy()-17,32
*	tBodyGyroJerk-correlation()-X,Y		fBodyGyro-bandsEnergy()-33,48
*	tBodyGyroJerk-correlation()-X,Z		fBodyGyro-bandsEnergy()-49,64
*	tBodyGyroJerk-correlation()-Y,Z		fBodyGyro-bandsEnergy()-1,24
*	tBodyAccMag-mad()		fBodyGyro-bandsEnergy()-25,48
*	tBodyAccMag-max()		fBodyGyro-bandsEnergy()-1,8
*	tBodyAccMag-min()		fBodyGyro-bandsEnergy()-9,16
*	tBodyAccMag-sma()		fBodyGyro-bandsEnergy()-17,24
*	tBodyAccMag-energy()		fBodyGyro-bandsEnergy()-25,32
*	tBodyAccMag-iqr()		fBodyGyro-bandsEnergy()-33,40
*	tBodyAccMag-entropy()		fBodyGyro-bandsEnergy()-41,48
*	tBodyAccMag-arCoeff()1		fBodyGyro-bandsEnergy()-49,56
*	tBodyAccMag-arCoeff()2		fBodyGyro-bandsEnergy()-57,64
*	tBodyAccMag-arCoeff()3		fBodyGyro-bandsEnergy()-1,16
*	tBodyAccMag-arCoeff()4		fBodyGyro-bandsEnergy()-17,32
*	tGravityAccMag-mad()		fBodyGyro-bandsEnergy()-33,48
*	tGravityAccMag-max()		fBodyGyro-bandsEnergy()-49,64
*	tGravityAccMag-min()		fBodyGyro-bandsEnergy()-1,24
*	tGravityAccMag-sma()		fBodyGyro-bandsEnergy()-25,48
*	tGravityAccMag-energy()		fBodyGyro-bandsEnergy()-1,8
*	tGravityAccMag-iqr()		fBodyGyro-bandsEnergy()-9,16
*	tGravityAccMag-entropy()		fBodyGyro-bandsEnergy()-17,24
*	tGravityAccMag-arCoeff()1		fBodyGyro-bandsEnergy()-25,32
*	tGravityAccMag-arCoeff()2		fBodyGyro-bandsEnergy()-33,40
*	tGravityAccMag-arCoeff()3		fBodyGyro-bandsEnergy()-41,48
*	tGravityAccMag-arCoeff()4		fBodyGyro-bandsEnergy()-49,56
*	tBodyAccJerkMag-mad()		fBodyGyro-bandsEnergy()-57,64
*	tBodyAccJerkMag-max()		fBodyGyro-bandsEnergy()-1,16
*	tBodyAccJerkMag-min()		fBodyGyro-bandsEnergy()-17,32
*	tBodyAccJerkMag-sma()		fBodyGyro-bandsEnergy()-33,48
*	tBodyAccJerkMag-energy()		fBodyGyro-bandsEnergy()-49,64
*	tBodyAccJerkMag-iqr()		        fBodyGyro-bandsEnergy()-1,24
*	tBodyAccJerkMag-entropy()		fBodyGyro-bandsEnergy()-25,48
*	tBodyAccJerkMag-arCoeff()1		fBodyAccMag-mad()
*	tBodyAccJerkMag-arCoeff()2		fBodyAccMag-max()
*	tBodyAccJerkMag-arCoeff()3		fBodyAccMag-min()
*	tBodyAccJerkMag-arCoeff()4		fBodyAccMag-sma()
*	tBodyGyroMag-mad()		fBodyAccMag-energy()
*	tBodyGyroMag-max()		fBodyAccMag-iqr()
*	tBodyGyroMag-min()		fBodyAccMag-entropy()
*	tBodyGyroMag-sma()		fBodyAccMag-maxInds
*	tBodyGyroMag-energy()		fBodyAccMag-meanFreq()
*	tBodyGyroMag-iqr()		fBodyAccMag-skewness()
*	tBodyGyroMag-entropy()		fBodyAccMag-kurtosis()
*	tBodyGyroMag-arCoeff()1		fBodyBodyAccJerkMag-mean()
*	tBodyGyroMag-arCoeff()2		fBodyBodyAccJerkMag-std()
*	tBodyGyroMag-arCoeff()3		fBodyBodyAccJerkMag-mad()
*	tBodyGyroMag-arCoeff()4		fBodyBodyAccJerkMag-max()
*	tBodyGyroJerkMag-mad()		fBodyBodyAccJerkMag-min()
*	tBodyGyroJerkMag-max()		fBodyBodyAccJerkMag-sma()
*	tBodyGyroJerkMag-min()		fBodyBodyAccJerkMag-energy()
*	tBodyGyroJerkMag-sma()		fBodyBodyAccJerkMag-iqr()
*	tBodyGyroJerkMag-energy()		fBodyBodyAccJerkMag-entropy()
*	tBodyGyroJerkMag-iqr()		        fBodyBodyAccJerkMag-maxInds
*	tBodyGyroJerkMag-entropy()		fBodyBodyAccJerkMag-meanFreq()
*	tBodyGyroJerkMag-arCoeff()1		fBodyBodyAccJerkMag-skewness()
*	tBodyGyroJerkMag-arCoeff()2		fBodyBodyAccJerkMag-kurtosis()
*	tBodyGyroJerkMag-arCoeff()3		fBodyBodyGyroMag-mean()
*	tBodyGyroJerkMag-arCoeff()4		fBodyBodyGyroMag-std()
*	fBodyAcc-mad()-X		fBodyBodyGyroMag-mad()
*	fBodyAcc-mad()-Y		fBodyBodyGyroMag-max()
*	fBodyAcc-mad()-Z		fBodyBodyGyroMag-min()
*	fBodyAcc-max()-X		fBodyBodyGyroMag-sma()
*	fBodyAcc-max()-Y		fBodyBodyGyroMag-energy()
*	fBodyAcc-max()-Z		fBodyBodyGyroMag-iqr()
*	fBodyAcc-min()-X		fBodyBodyGyroMag-entropy()
*	fBodyAcc-min()-Y		fBodyBodyGyroMag-maxInds
*	fBodyAcc-min()-Z		fBodyBodyGyroMag-meanFreq()
*	fBodyAcc-sma()		        fBodyBodyGyroMag-skewness()
*	fBodyAcc-energy()-X		fBodyBodyGyroMag-kurtosis()
*	fBodyAcc-energy()-Y		fBodyBodyGyroJerkMag-mean()
*	fBodyAcc-energy()-Z		fBodyBodyGyroJerkMag-std()
*	fBodyAcc-iqr()-X		fBodyBodyGyroJerkMag-mad()
*	fBodyAcc-iqr()-Y		fBodyBodyGyroJerkMag-max()
*	fBodyAcc-iqr()-Z		fBodyBodyGyroJerkMag-min()
*	fBodyAcc-entropy()-X		fBodyBodyGyroJerkMag-sma()
*	fBodyAcc-entropy()-Y		fBodyBodyGyroJerkMag-energy()
*	fBodyAcc-entropy()-Z		fBodyBodyGyroJerkMag-iqr()
*	fBodyAcc-maxInds-X		fBodyBodyGyroJerkMag-entropy()
*	fBodyAcc-maxInds-Y		fBodyBodyGyroJerkMag-maxInds
*	fBodyAcc-maxInds-Z		fBodyBodyGyroJerkMag-meanFreq()
*	fBodyAcc-meanFreq()-X		fBodyBodyGyroJerkMag-skewness()
*	fBodyAcc-meanFreq()-Y		fBodyBodyGyroJerkMag-kurtosis()
*	fBodyAcc-meanFreq()-Z		

