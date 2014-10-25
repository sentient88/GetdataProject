## Getting and Cleaning Data Course Project

### READ ME


Project details extracted from Coursera:

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 

3. Uses descriptive activity names to name the activities in the data set.

4. Appropriately labels the data set with descriptive variable names. 

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.



==============


### Project Work

In the repo: GetdataProject, there are 3 files:

* 'run_analysis.R' - Contains the script for processing the original data sets into the tidy data set (i.e. the final output)

* 'README.md' - Provides the project background and the details of how the script in 'run.analysis.R' works.

* 'CodeBook.md' - Explains the variables in the processed tidy data set (i.e. final output)



==============


Note: For more information on the original data set, please refer to the README.md inside the zip file that is downloaded from the given URL.


### Understanding 'run_analysis.R'


The script in run_analysis.R does the following:


To complete Step 1:

- Download the zip file from the given URL

- Record the date that the zip file is being downloaded

- Unzip the zip file to the working directory

- Read the following data sets in 'train' folder in R: 'X_train.txt', 'y_train.txt', 'subject_train.txt'

- Read the following data sets in 'test' folder in R: 'X_test.txt', 'y_test.txt', 'subject_test.txt'

- Note: The files within the "Inertial Signals" folders are not required for this project

- Extract the list of names of each feature variable from 'features.txt'

- Name all the columns in the data sets: 'activity', 'subject', and the corresponding feature variable name

- Merge all these data sets into a single data set with the following column order: 'activity', 'subject', and the list of 'feature variables'


To complete Step 2:

- From the single data set in Step 1, subset only the measurements on the mean and standard deviation for each measurement

- Note: This means that only those features with variable names that contain "-mean()" or "-std()" will be extracted.  For e.g. tBodyAccMag-mean() and fBodyAccJerk-std()-Y

- Note: Those features with variables that contain "-meanFreq()" will be excluded.  For e.g. fBodyAccJerk-meanFreq()-X

- Note: Those features with angle() variable will be excluded too.  For e.g. angle(tBodyGyroMean,gravityMean)

- This will result in a smaller single data set with the following column order: 'activity', 'subject', and the reduced list of 'feature variables' for mean and standard deviation measurements only


To complete Step 3:

- Extract the list of activity names from 'activity_labels.txt'

- Convert the activity names to lower case

- For the 'activity' column in the data set from Step 2, replace the activity code (1 to 6) with the corresponding activity name

- This will result in a similar data set as Step 2, but with descriptive activity names instead of activity codes


To complete Step 4:

For all variable names in the data set from Step 3,

- Convert all characters to lower case

- Replace short forms with more descriptive forms: 

	** 'acc' -> 'accelerometer'
	** 'gyro' -> 'gyroscope'
	** 'mag' -> 'magnitude' 

- Remove "(" and ")" characters.  For e.g. tBodyAccMag-mean() 

- This will re-label the data set from Step 3 to have descriptive variable names.

- Note: In this case, all symbols will be removed, and all characters will be in lower case.

- Note: The resulting variable names are very long and hence may not be easy for human reading.  However, they are fully descriptive which is the requirement of the project.






==============

References:  

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

For more information about this dataset contact: activityrecognition@smartlab.ws


[2] 