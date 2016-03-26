Dataset CodeBook
=================

## Introduction
This codebook describes the data in the dataset produced by "run_analysis.R". The script takes a subset of the data from the Human Activity Recognition Using Smartphones Dataset and produces the average of the time and frequency domain variables for each activity and each person. The subset of features extracted is described below.

## Features
The Human Activity Recognition Using Smartphones Dataset contains a set of features obtained from activity measurements. The main features are described as follows: 
N.B: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ: body linear acceleration [time domain]
* tGravityAcc-XYZ: gravity linear acceleration [time domain]
* tBodyAccJerk-XYZ: d(body linear acceleration)/dt (Jerk) [time domain]
* tBodyGyro-XYZ: body angular velocity [time domain]
* tBodyGyroJerk-XYZ: d(body angular velocity)/dt (Jerk) [time domain]
* tBodyAccMag: Euclidean norm magnitude for body linear acceleration [time domain]
* tGravityAccMag: Euclidean norm magnitude for gravity linear acceleration [time domain]
* tBodyAccJerkMag: Euclidean norm magnitude for d(body linear acceleration)/dt (Jerk) [time domain]
* tBodyGyroMag: Euclidean norm magnitude for body angular velocity [time domain]
* tBodyGyroJerkMag: Euclidean norm magnitude for d(body angular velocity)/dt (Jerk) [time domain]
* fBodyAcc-XYZ: body linear acceleration [frequency domain]
* fBodyAccJerk-XYZ: d(body linear acceleration)/dt (Jerk) [frequency domain]
* fBodyGyro-XYZ: body angular velocity [frequency domain]
* fBodyAccMag: Euclidean norm magnitude for body linear acceleration [frequency domain]
* fBodyAccJerkMag: Euclidean norm magnitude for d(body linear acceleration)/dt (Jerk) [frequency domain]
* fBodyGyroMag: Euclidean norm magnitude for body angular velocity [frequency domain]
* fBodyGyroJerkMag: Euclidean norm magnitude for d(body angular velocity)/dt (Jerk) [frequency domain]

The original dataset computed a set of variables that were estimated from each of these signals. The script however, only utilised two of the variable estimations, namely the following: 
* mean(): Mean value
* std(): Standard deviation

The complete list of variables of each feature vector for the script-produced dataset is shown below:
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tGravityAccMag-mean()
* tGravityAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyAccJerkMag-mean()
* fBodyAccJerkMag-std()
* fBodyGyroMag-mean()
* fBodyGyroMag-std()
* fBodyGyroJerkMag-mean()
* fBodyGyroJerkMag-std()