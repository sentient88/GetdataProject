## Getting and Cleaning Data Course Project

### Code Book


Running the full script in 'run_analysis.R' will create a tidy data set that contains 68 variables with 180 observations


#### Variables - what they mean:


- (1) activity : There are 6 types of activities in total.  This is referenced from 'activity_labels.txt' in the original data sets.

		* (1) - walking
		* (2) - walking_upstairs
		* (3) - walking_downstairs
		* (4) - sitting
		* (5) - standing
		* (6) - laying


- (2) subject : There are 30 participants (i.e. subjects) in total.  They are numbered from 1 to 30.


Note: 

	* Variables (3) to (68) represent feature vectors (or the derivatives).  The values of these variables are computed from the mean of each feature measurement by activity and subject.

	* The feature variable names have been modified to remove symbols, and to be in lower case and more descriptive.  The original form of the feature variable name is referenced from 'features.txt' in the original data sets.  

	* The full explanation on how these features are measured and calculated can be referenced from 'features_info.txt' in the original data sets.


- (3) timebodyaccelerometermeanvalueindirectionx : mean value of time domain signals for the body acceleration signals in the X direction  (corresponds to 'tBodyAcc-mean()-X' in original data sets)





Note: From the resulting data set, it is noted that every subject had participated in every activity.  Hence there should be (30 x 6) = 180 observations, which is in line with the resulting tidy data set.