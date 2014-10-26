## Getting and Cleaning Data Course Project

### Code Book


Running the full script in 'run_analysis.R' will create a tidy data set that contains 68 variables with 180 observations.

The original data sets are obtained from the given URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

For more details on the project, please refer to README file located in the same repo.


====================

##### Note :

* Variables (3) to (68) represent features.  The values of these variables are computed from the mean of each feature measurement grouped by activity and subject.

* In the original data sets, the feature measurements are normalized and bounded within [-1,1].

* The feature variable names have been modified to remove symbols, and to be in lower case and more descriptive.  The original form of the feature variable name is referenced from 'features.txt' in the original data sets.  

* The full explanation on how these features are measured and calculated can be referenced from 'features_info.txt' in the original data sets.

* Relevant extract from 'features_info.txt' is included at the bottom of this file.


====================

### List of Variables :


###### (1) activity : 

- There are 6 types of activities in total.  This is referenced from 'activity_labels.txt' in the original data sets.
   
		* (1) - walking
		* (2) - walking_upstairs
		* (3) - walking_downstairs
		* (4) - sitting
		* (5) - standing
		* (6) - laying


###### (2) subject : 

- There are 30 participants (i.e. subjects) in total.  They are numbered from 1 to 30.


Note: From the resulting data set, it is observed that every subject had participated in every activity.  Hence there should be (30 x 6) = 180 observations, which is in line with the resulting tidy data set.



###### (3) timebodyaccelerometermeanvalueindirectionx : 

- Mean value of time domain signals for the body acceleration in the X direction  

- Corresponds to 'tBodyAcc-mean()-X' in the original data sets


###### (4) timebodyaccelerometermeanvalueindirectiony : 

- Mean value of time domain signals for the body acceleration in the Y direction  

- Corresponds to 'tBodyAcc-mean()-Y' in the original data sets


###### (5) timebodyaccelerometermeanvalueindirectionz : 

- Mean value of time domain signals for the body acceleration in the Z direction  

- Corresponds to 'tBodyAcc-mean()-Z' in the original data sets


###### (6) timebodyaccelerometerstandarddeviationindirectionx : 

- Standard deviation of time domain signals for the body acceleration in the X direction  

- Corresponds to 'tBodyAcc-std()-X' in the original data sets


###### (7) timebodyaccelerometerstandarddeviationindirectiony : 

- Standard deviation of time domain signals for the body acceleration in the Y direction  

- Corresponds to 'tBodyAcc-std()-Y' in the original data sets


###### (8) timebodyaccelerometerstandarddeviationindirectionz : 

- Standard deviation of time domain signals for the body acceleration in the Z direction  

- Corresponds to 'tBodyAcc-std()-Z' in the original data sets


###### (9) timegravityaccelerometermeanvalueindirectionx : 

- Mean value of time domain signals for the gravity acceleration in the X direction  

- Corresponds to 'tGravityAcc-mean()-X' in the original data sets


###### (10) timegravityaccelerometermeanvalueindirectiony : 

- Mean value of time domain signals for the gravity acceleration in the Y direction  

- Corresponds to 'tGravityAcc-mean()-Y' in the original data sets


###### (11) timegravityaccelerometermeanvalueindirectionz : 

- Mean value of time domain signals for the gravity acceleration in the Z direction  

- Corresponds to 'tGravityAcc-mean()-Z' in the original data sets


###### (12) timegravityaccelerometerstandarddeviationindirectionx : 

- Standard deviation of time domain signals for the gravity acceleration in the X direction  

- Corresponds to 'tGravityAcc-std()-X' in the original data sets


###### (13) timegravityaccelerometerstandarddeviationindirectiony : 

- Standard deviation of time domain signals for the gravity acceleration in the Y direction  

- Corresponds to 'tGravityAcc-std()-Y' in the original data sets


###### (14) timegravityaccelerometerstandarddeviationindirectionz : 

- Standard deviation of time domain signals for the gravity acceleration in the Z direction  

- Corresponds to 'tGravityAcc-std()-Z' in the original data sets


###### (15) timebodyaccelerometerjerkmeanvalueindirectionx : 

- Mean value of time domain Jerk signals for the body linear acceleration in the X direction  

- Corresponds to 'tBodyAccJerk-mean()-X' in the original data sets


###### (16) timebodyaccelerometerjerkmeanvalueindirectiony : 

- Mean value of time domain Jerk signals for the body linear acceleration in the Y direction  

- Corresponds to 'tBodyAccJerk-mean()-Y' in the original data sets


###### (17) timebodyaccelerometerjerkmeanvalueindirectionz : 

- Mean value of time domain Jerk signals for the body linear acceleration in the Z direction  

- Corresponds to 'tBodyAccJerk-mean()-Z' in the original data sets


###### (18) timebodyaccelerometerjerkstandarddeviationindirectionx : 

- Standard deviation of time domain Jerk signals for the body linear acceleration in the X direction  

- Corresponds to 'tBodyAccJerk-std()-X' in the original data sets


###### (19) timebodyaccelerometerjerkstandarddeviationindirectiony : 

- Standard deviation of time domain Jerk signals for the body linear acceleration in the Y direction  

- Corresponds to 'tBodyAccJerk-std()-Y' in the original data sets


###### (20) timebodyaccelerometerjerkstandarddeviationindirectionz : 

- Standard deviation of time domain Jerk signals for the body linear acceleration in the Z direction  

- Corresponds to 'tBodyAccJerk-std()-Z' in the original data sets


###### (21) timebodygyroscopemeanvalueindirectionx : 

- Mean value of time domain signals for the body acceleration from gyroscope in the X direction  

- Corresponds to 'tBodyGyro-mean()-X' in the original data sets


###### (22) timebodygyroscopemeanvalueindirectiony : 

- Mean value of time domain signals for the body acceleration from gyroscope in the Y direction  

- Corresponds to 'tBodyGyro-mean()-Y' in the original data sets


###### (23) timebodygyroscopemeanvalueindirectionz : 

- Mean value of time domain signals for the body acceleration from gyroscope in the Z direction  

- Corresponds to 'tBodyGyro-mean()-Z' in the original data sets


###### (24) timebodygyroscopestandarddeviationindirectionx : 

- Standard deviation of time domain signals for the body acceleration from gyroscope in the X direction  

- Corresponds to 'tBodyGyro-std()-X' in the original data sets


###### (25) timebodygyroscopestandarddeviationindirectiony : 

- Standard deviation of time domain signals for the body acceleration from gyroscope in the Y direction  

- Corresponds to 'tBodyGyro-std()-Y' in the original data sets


###### (26) timebodygyroscopestandarddeviationindirectionz : 

- Standard deviation of time domain signals for the body acceleration from gyroscope in the Z direction  

- Corresponds to 'tBodyGyro-std()-Z' in the original data sets


###### (27) timebodygyroscopejerkmeanvalueindirectionx : 

- Mean value of time domain Jerk signals for the body angular velocity in the X direction  

- Corresponds to 'tBodyGyroJerk-mean()-X' in the original data sets


###### (28) timebodygyroscopejerkmeanvalueindirectiony : 

- Mean value of time domain Jerk signals for the body angular velocity in the Y direction  

- Corresponds to 'tBodyGyroJerk-mean()-Y' in the original data sets


###### (29) timebodygyroscopejerkmeanvalueindirectionz : 

- Mean value of time domain Jerk signals for the body angular velocity in the Z direction  

- Corresponds to 'tBodyGyroJerk-mean()-Z' in the original data sets


###### (30) timebodygyroscopejerkstandarddeviationindirectionx : 

- Standard deviation of time domain Jerk signals for the body angular velocity in the X direction  

- Corresponds to 'tBodyGyroJerk-std()-X' in the original data sets


###### (31) timebodygyroscopejerkstandarddeviationindirectiony : 

- Standard deviation of time domain Jerk signals for the body angular velocity in the Y direction  

- Corresponds to 'tBodyGyroJerk-std()-Y' in the original data sets


###### (32) timebodygyroscopejerkstandarddeviationindirectionz : 

- Standard deviation of time domain Jerk signals for the body angular velocity in the Z direction  

- Corresponds to 'tBodyGyroJerk-std()-Z' in the original data sets


###### (33) timebodyaccelerometermagnitudemeanvalue : 

- Mean value of magnitude of time domain signals for the body acceleration (3-dimensional)

- Corresponds to 'tBodyAccMag-mean()' in the original data sets


###### (34) timebodyaccelerometermagnitudestandarddeviation : 

- Standard deviation of magnitude of time domain signals for the body acceleration (3-dimensional)  

- Corresponds to 'tBodyAccMag-std()' in the original data sets


###### (35) timegravityaccelerometermagnitudemeanvalue : 

- Mean value of magnitude of time domain signals for the gravity acceleration (3-dimensional)  

- Corresponds to 'tGravityAccMag-mean()' in the original data sets


###### (36) timegravityaccelerometermagnitudestandarddeviation : 

- Standard deviation of magnitude of time domain signals for the gravity acceleration (3-dimensional)

- Corresponds to 'tGravityAccMag-std()' in the original data sets


###### (37) timebodyaccelerometerjerkmagnitudemeanvalue : 

- Mean value of magnitude of time domain Jerk signals for the body linear acceleration (3-dimensional)  

- Corresponds to 'tBodyAccJerkMag-mean()' in the original data sets


###### (38) timebodyaccelerometerjerkmagnitudestandarddeviation : 

- Standard deviation of magnitude of time domain Jerk signals for the body linear acceleration (3-dimensional)  

- Corresponds to 'tBodyAccJerkMag-std()' in the original data sets


###### (39) timebodygyroscopemagnitudemeanvalue : 

- Mean value of magnitude of time domain signals for the body acceleration from gyroscope (3-dimensional)

- Corresponds to 'tBodyGyroMag-mean()' in the original data sets


###### (40) timebodygyroscopemagnitudestandarddeviation : 

- Standard deviation of magnitude of time domain signals for the body acceleration from gyroscope (3-dimensional)

- Corresponds to 'tBodyGyroMag-std()' in the original data sets


###### (41) timebodygyroscopejerkmagnitudemeanvalue : 

- Mean value of magnitude of time domain Jerk signals for the body angular velocity (3-dimensional)

- Corresponds to 'tBodyGyroJerkMag-mean()' in the original data sets


###### (42) timebodygyroscopejerkmagnitudestandarddeviation : 

- Standard deviation of magnitude of time domain Jerk signals for the body angular velocity (3-dimensional)

- Corresponds to 'tBodyGyroJerkMag-std()' in the original data sets


###### (43) frequencybodyaccelerometermeanvalueindirectionx : 

- Mean value of frequency domain signals for the body acceleration in the X direction  

- Corresponds to 'fBodyAcc-mean()-X' in the original data sets


###### (44) frequencybodyaccelerometermeanvalueindirectiony : 

- Mean value of frequency domain signals for the body acceleration in the Y direction  

- Corresponds to 'fBodyAcc-mean()-Y' in the original data sets


###### (45) frequencybodyaccelerometermeanvalueindirectionz : 

- Mean value of frequency domain signals for the body acceleration in the Z direction  

- Corresponds to 'fBodyAcc-mean()-Z' in the original data sets


###### (46) frequencybodyaccelerometerstandarddeviationindirectionx : 

- Standard deviation of frequency domain signals for the body acceleration in the X direction  

- Corresponds to 'fBodyAcc-std()-X' in the original data sets


###### (47) frequencybodyaccelerometerstandarddeviationindirectiony : 

- Standard deviation of frequency domain signals for the body acceleration in the Y direction  

- Corresponds to 'fBodyAcc-std()-Y' in the original data sets


###### (48) frequencybodyaccelerometerstandarddeviationindirectionz : 

- Standard deviation of frequency domain signals for the body acceleration in the Z direction  

- Corresponds to 'fBodyAcc-std()-Z' in the original data sets


###### (49) frequencybodyaccelerometerjerkmeanvalueindirectionx : 

- Mean value of frequency domain Jerk signals for the body linear acceleration in the X direction  

- Corresponds to 'fBodyAccJerk-mean()-X' in the original data sets


###### (50) frequencybodyaccelerometerjerkmeanvalueindirectiony : 

- Mean value of frequency domain Jerk signals for the body linear acceleration in the Y direction  

- Corresponds to 'fBodyAccJerk-mean()-Y' in the original data sets


###### (51) frequencybodyaccelerometerjerkmeanvalueindirectionz : 

- Mean value of frequency domain Jerk signals for the body linear acceleration in the Z direction  

- Corresponds to 'fBodyAccJerk-mean()-Z' in the original data sets


###### (52) frequencybodyaccelerometerjerkstandarddeviationindirectionx : 

- Standard deviation of frequency domain Jerk signals for the body linear acceleration in the X direction  

- Corresponds to 'fBodyAccJerk-std()-X' in the original data sets


###### (53) frequencybodyaccelerometerjerkstandarddeviationindirectiony : 

- Standard deviation of frequency domain Jerk signals for the body linear acceleration in the Y direction  

- Corresponds to 'fBodyAccJerk-std()-Y' in the original data sets


###### (54) frequencybodyaccelerometerjerkstandarddeviationindirectionz : 

- Standard deviation of frequency domain Jerk signals for the body linear acceleration in the Z direction  

- Corresponds to 'fBodyAccJerk-std()-Z' in the original data sets


###### (55) frequencybodygyroscopemeanvalueindirectionx : 

- Mean value of frequency domain signals for the body acceleration from gyroscope in the X direction  

- Corresponds to 'fBodyGyro-mean()-X' in the original data sets


###### (56) frequencybodygyroscopemeanvalueindirectiony : 

- Mean value of frequency domain signals for the body acceleration from gyroscope in the Y direction  

- Corresponds to 'fBodyGyro-mean()-Y' in the original data sets


###### (57) frequencybodygyroscopemeanvalueindirectionz : 

- Mean value of frequency domain signals for the body acceleration from gyroscope in the Z direction  

- Corresponds to 'fBodyGyro-mean()-Z' in the original data sets


###### (58) frequencybodygyroscopestandarddeviationindirectionx : 

- Standard deviation of frequency domain signals for the body acceleration from gyroscope in the X direction  

- Corresponds to 'fBodyGyro-std()-X' in the original data sets


###### (59) frequencybodygyroscopestandarddeviationindirectiony : 

- Standard deviation of frequency domain signals for the body acceleration from gyroscope in the Y direction  

- Corresponds to 'fBodyGyro-std()-Y' in the original data sets


###### (60) frequencybodygyroscopestandarddeviationindirectionz : 

- Standard deviation of frequency domain signals for the body acceleration from gyroscope in the Z direction  

- Corresponds to 'fBodyGyro-std()-Z' in the original data sets


###### (61) frequencybodyaccelerometermagnitudemeanvalue : 

- Mean value of magnitude of frequency domain signals for the body acceleration (3-dimensional)

- Corresponds to 'fBodyAccMag-mean()' in the original data sets


###### (62) frequencybodyaccelerometermagnitudestandarddeviation : 

- Standard deviation of magnitude of frequency domain signals for the body acceleration (3-dimensional)

- Corresponds to 'fBodyAccMag-std()' in the original data sets


###### (63) frequencybodyaccelerometerjerkmagnitudemeanvalue : 

- Mean value of magnitude of frequency domain Jerk signals for the body linear acceleration (3-dimensional)  

- Corresponds to 'fBodyBodyAccJerkMag-mean()' in the original data sets


###### (64) frequencybodyaccelerometerjerkmagnitudestandarddeviation : 

- Standard deviation of magnitude of frequency domain Jerk signals for the body linear acceleration (3-dimensional)  

- Corresponds to 'fBodyBodyAccJerkMag-std()' in the original data sets


###### (65) frequencybodygyroscopemagnitudemeanvalue : 

- Mean value of magnitude of frequency domain signals for the body acceleration from gyroscope (3-dimensional)

- Corresponds to 'fBodyBodyGyroMag-mean()' in the original data sets


###### (66) frequencybodygyroscopemagnitudestandarddeviation : 

- Standard deviation of magnitude of frequency domain signals for the body acceleration from gyroscope (3-dimensional)

- Corresponds to 'fBodyBodyGyroMag-std()' in the original data sets


###### (67) frequencybodygyroscopejerkmagnitudemeanvalue : 

- Mean value of magnitude of frequency domain Jerk signals for the body angular velocity (3-dimensional)

- Corresponds to 'fBodyBodyGyroJerkMag-mean()' in the original data sets


###### (68) frequencybodygyroscopejerkmagnitudestandarddeviation : 

- Standard deviation of magnitude of frequency domain Jerk signals for the body angular velocity (3-dimensional)

- Corresponds to 'fBodyBodyGyroJerkMag-std()' in the original data sets



=======================


##### Relevant background information on features :

(Extracted from 'features_info.txt' within the zip file) 


###### Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
....
....


Note:  The above 2 variables 'mean()' and 'std()' are being used in the project.  There are other variables like 'min()' and 'max()' specified in the 'features_info.txt' which are not mentioned here as they are not being used for the purpose of this project.


=======================