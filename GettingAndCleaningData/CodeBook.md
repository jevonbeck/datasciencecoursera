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
1. tBodyAcc-mean()-X
2. tBodyAcc-mean()-Y
3. tBodyAcc-mean()-Z
4. tBodyAcc-std()-X
5. tBodyAcc-std()-Y
6. tBodyAcc-std()-Z
7. tGravityAcc-mean()-X
8. tGravityAcc-mean()-Y
9. tGravityAcc-mean()-Z
10. tGravityAcc-std()-X
11. tGravityAcc-std()-Y
12. tGravityAcc-std()-Z
13. tBodyAccJerk-mean()-X
14. tBodyAccJerk-mean()-Y
15. tBodyAccJerk-mean()-Z
16. tBodyAccJerk-std()-X
17. tBodyAccJerk-std()-Y
18. tBodyAccJerk-std()-Z
19. tBodyGyro-mean()-X
20. tBodyGyro-mean()-Y
21. tBodyGyro-mean()-Z
22. tBodyGyro-std()-X
23. tBodyGyro-std()-Y
24. tBodyGyro-std()-Z
25. tBodyGyroJerk-mean()-X
26. tBodyGyroJerk-mean()-Y
27. tBodyGyroJerk-mean()-Z
28. tBodyGyroJerk-std()-X
29. tBodyGyroJerk-std()-Y
30. tBodyGyroJerk-std()-Z
31. tBodyAccMag-mean()
32. tBodyAccMag-std()
33. tGravityAccMag-mean()
34. tGravityAccMag-std()
35. tBodyAccJerkMag-mean()
36. tBodyAccJerkMag-std()
37. tBodyGyroMag-mean()
38. tBodyGyroMag-std()
39. tBodyGyroJerkMag-mean()
40. tBodyGyroJerkMag-std()
41. fBodyAcc-mean()-X
42. fBodyAcc-mean()-Y
43. fBodyAcc-mean()-Z
44. fBodyAcc-std()-X
45. fBodyAcc-std()-Y
46. fBodyAcc-std()-Z
47. fBodyAccJerk-mean()-X
48. fBodyAccJerk-mean()-Y
49. fBodyAccJerk-mean()-Z
50. fBodyAccJerk-std()-X
51. fBodyAccJerk-std()-Y
52. fBodyAccJerk-std()-Z
53. fBodyGyro-mean()-X
54. fBodyGyro-mean()-Y
55. fBodyGyro-mean()-Z
56. fBodyGyro-std()-X
57. fBodyGyro-std()-Y
58. fBodyGyro-std()-Z
59. fBodyAccMag-mean()
60. fBodyAccMag-std()
61. fBodyAccJerkMag-mean()
62. fBodyAccJerkMag-std()
63. fBodyGyroMag-mean()
64. fBodyGyroMag-std()
65. fBodyGyroJerkMag-mean()
66. fBodyGyroJerkMag-std()