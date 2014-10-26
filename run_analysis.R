## Getting and Cleaning Data Course Project
##

## Download the zip file from the given URL
## Record the date of download

dataset_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(dataset_url, destfile = "project_data.zip")
dateDownloaded <- date()


## Unzip the zip file to the working directory

unzip("project_data.zip")


## Reading data from Training set

xtraindata <- read.table("UCI HAR Dataset/train/X_train.txt")
ytraindata <- read.table("UCI HAR Dataset/train/y_train.txt")
straindata <- read.table("UCI HAR Dataset/train/subject_train.txt")


## Reading data from Test set

xtestdata <- read.table("UCI HAR Dataset/test/X_test.txt")
ytestdata <- read.table("UCI HAR Dataset/test/y_test.txt")
stestdata <- read.table("UCI HAR Dataset/test/subject_test.txt")


## Merging the Training and Test data sets

merge1 <- rbind(xtraindata, xtestdata)
merge2 <- rbind(ytraindata, ytestdata)
merge3 <- rbind(straindata, stestdata)


## Reading data from feature.txt

features <- read.table("UCI HAR Dataset/features.txt")
my_col <- as.vector(features[, 2])


## Naming the columns

names(merge1) <- my_col
names(merge2) <- "activity"
names(merge3) <- "subject"


## Bind columns to form the required data set

merge_all <- cbind(merge2, merge3, merge1)


## Completed Step 1: Merges the training and the test sets 
## to create one data set.
##
##------


## Extract relevant columns in data set 

my_expr <- "activity|subject|mean|std"

merge_all2 <- merge_all[, grep(my_expr, colnames(merge_all))]


## Remove columns for "meanFreq" e.g. fBodyAcc-meanFreq()-X

merge_all3 <- merge_all2[, -grep("meanFreq", colnames(merge_all2))]


## Completed Step 2: Extracts only the measurements on 
## the mean and standard deviation for each measurement.
##
##------


## Reading data from activity_labels.txt

actlabels <- read.table("UCI HAR Dataset/activity_labels.txt")

activity1 <- tolower(as.character(actlabels[1, 2]))
activity2 <- tolower(as.character(actlabels[2, 2]))
activity3 <- tolower(as.character(actlabels[3, 2]))
activity4 <- tolower(as.character(actlabels[4, 2]))
activity5 <- tolower(as.character(actlabels[5, 2]))
activity6 <- tolower(as.character(actlabels[6, 2]))


## Replace the activity codes with the respective activity names

activity <- gsub("1", activity1, merge_all3[, 1])
activity <- gsub("2", activity2, activity)
activity <- gsub("3", activity3, activity)
activity <- gsub("4", activity4, activity)
activity <- gsub("5", activity5, activity)
activity <- gsub("6", activity6, activity)


## Bind columns to form the required data set

merge_all4 <- cbind(activity, merge_all3[, -1])


## Completed Step 3: Uses descriptive activity names to name 
## the activities in the data set.
##
##------


## Convert all upper-case characters to lower-case

names(merge_all4) <- tolower(names(merge_all4))


## Replace "tbody" with "timebody"; "tgravity" with "timegravity"
## Replace "fbody" with "frequencybody" 

names(merge_all4) <- gsub("tbody", "timebody", names(merge_all4))
names(merge_all4) <- gsub("tgravity", "timegravity", names(merge_all4))
names(merge_all4) <- gsub("fbody", "frequencybody", names(merge_all4))


## Replace "acc" with "accelerometer"; "gyro" with "gyroscope"

names(merge_all4) <- gsub("acc", "accelerometer", names(merge_all4))
names(merge_all4) <- gsub("gyro", "gyroscope", names(merge_all4))


## Replace "mag" with "magnitude"

names(merge_all4) <- gsub("mag", "magnitude", names(merge_all4))


## Replace "-x" with "indirectionx"; "-y" with "indirectiony"
## Replace "-z" with "indirectionz"

names(merge_all4) <- gsub("-x", "indirectionx", names(merge_all4))
names(merge_all4) <- gsub("-y", "indirectiony", names(merge_all4))
names(merge_all4) <- gsub("-z", "indirectionz", names(merge_all4))


## Replace "-mean" with "meanvalue"; "-std" with "standarddeviation"

names(merge_all4) <- gsub("-mean", "meanvalue", names(merge_all4))
names(merge_all4) <- gsub("-std", "standarddeviation", names(merge_all4))


## Remove these characters: "(" and ")"

names(merge_all4) <- gsub("\\(", "", names(merge_all4))
names(merge_all4) <- gsub("\\)", "", names(merge_all4))


## Replace "bodybody" with "body"

names(merge_all4) <- gsub("bodybody", "body", names(merge_all4))


## Completed Step 4: Appropriately labels the data set with 
## descriptive variable names.
##
##------

## Load the 'dplyr' package

library(dplyr)


## Compute the mean of each variable by activity and subject

tidydata <- 
        group_by(merge_all4, activity, subject)%>%
        summarise_each(funs(mean))


## Completed Step 5: From the data set in step 4, creates a second, 
## independent tidy data set with the average of each variable for 
## each activity and each subject.
##
##------


## Save the final data set into a text file for submission purpose

write.table(tidydata, file = "step5tidydata.txt", row.names = FALSE)


## Note: To view text file in R, please use the following 2 lines of codes:

## data <- read.table("step5tidydata.txt", header = TRUE)
## View(data)


##############################################################