author: S. Gorgutsa 
date: 2021-07-11

# Code Book
Generated "tidydata.txt" contains the average of each variable for each activity and each subject from the Human Activity Recognition Using Smartphones Data Set

To generate "tidydata.txt":

1. Download data from the link below and unzip it into desired location
2. In the R script change 'path2data' variable to the corresponding directory
2. Execute the R script.

# Source Data
The source data represents the data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data for this project is available at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

# ABout R script
"run_analysis.R" performs the following steps:

1a. Reading Train datasets from the source data
1b. Reading Test datasets from the source data
1c. Reading features names and activity labels from the source data.

2a. Merging Train and Test datasets
2b. Naming 'features' columns based on features names fromt the source data
2c. Naming 'activity' and 'subject' data sets
2d. Merging 'features', 'activity' and 'subject' datasets into one data set

3. Extracting only the measurements on the mean and standard deviation for each measurement.

4. Generating and writing "tidydata.txt" containing the average of each variable for each activity and each subject (sorted first by subject, then by activity)

# Dataset description 
"tidydata.txt" contais 188 rows and 88 columns. The data for is grouped first by Subject (ID of the test subject, from 1 to 30), then by Actitivity. There are 6 types of Activity possible:

1.WALKING
2.WALKING_UPSTAIRS
3.WALKING_DOWNSTAIRS
4.SITTING
5.STANDING
6.LAYING

# Measurements available in the dataset
"tidydata.txt" contains mean and std values for the follwoing varibales:
"Subject"
"Activity" 
"tBodyAcc-mean()-X"
"tBodyAcc-mean()-Y"
"tBodyAcc-mean()-Z" 
"tBodyAcc-std()-X"
"tBodyAcc-std()-Y"
"tBodyAcc-std()-Z"
"tGravityAcc-mean()-X"
"tGravityAcc-mean()-Y"
"tGravityAcc-mean()-Z" 
"tGravityAcc-std()-X" 
"tGravityAcc-std()-Y" 
"tGravityAcc-std()-Z" 
"tBodyAccJerk-mean()-X"
"tBodyAccJerk-mean()-Y"
"tBodyAccJerk-mean()-Z"
"tBodyAccJerk-std()-X"
"tBodyAccJerk-std()-Y"
"tBodyAccJerk-std()-Z"
"tBodyGyro-mean()-X"
"tBodyGyro-mean()-Y"
"tBodyGyro-mean()-Z"
"tBodyGyro-std()-X"
"tBodyGyro-std()-Y"
"tBodyGyro-std()-Z"
"tBodyGyroJerk-mean()-X"
"tBodyGyroJerk-mean()-Y"
"tBodyGyroJerk-mean()-Z"
"tBodyGyroJerk-std()-X"
"tBodyGyroJerk-std()-Y"
"tBodyGyroJerk-std()-Z"
"tBodyAccMag-mean()"
"tBodyAccMag-std()"
"tGravityAccMag-mean()"
"tGravityAccMag-std()"
"tBodyAccJerkMag-mean()"
"tBodyAccJerkMag-std()"
"tBodyGyroMag-mean()"
"tBodyGyroMag-std()"
"tBodyGyroJerkMag-mean()"
"tBodyGyroJerkMag-std()"
"fBodyAcc-mean()-X"
"fBodyAcc-mean()-Y"
"fBodyAcc-mean()-Z"
"fBodyAcc-std()-X"
"fBodyAcc-std()-Y"
"fBodyAcc-std()-Z"
"fBodyAcc-meanFreq()-X"
"fBodyAcc-meanFreq()-Y"
"fBodyAcc-meanFreq()-Z"
"fBodyAccJerk-mean()-X"
"fBodyAccJerk-mean()-Y"
"fBodyAccJerk-mean()-Z"
"fBodyAccJerk-std()-X"
"fBodyAccJerk-std()-Y"
"fBodyAccJerk-std()-Z"
"fBodyAccJerk-meanFreq()-X"
"fBodyAccJerk-meanFreq()-Y"
"fBodyAccJerk-meanFreq()-Z"
"fBodyGyro-mean()-X"
"fBodyGyro-mean()-Y"
"fBodyGyro-mean()-Z"
"fBodyGyro-std()-X"
"fBodyGyro-std()-Y"
"fBodyGyro-std()-Z"
"fBodyGyro-meanFreq()-X"
"fBodyGyro-meanFreq()-Y"
"fBodyGyro-meanFreq()-Z"
"fBodyAccMag-mean()"
"fBodyAccMag-std()"
"fBodyAccMag-meanFreq()"
"fBodyBodyAccJerkMag-mean()"
"fBodyBodyAccJerkMag-std()"
"fBodyBodyAccJerkMag-meanFreq()"
"fBodyBodyGyroMag-mean()"
"fBodyBodyGyroMag-std()"
"fBodyBodyGyroMag-meanFreq()"
"fBodyBodyGyroJerkMag-mean()"
"fBodyBodyGyroJerkMag-std()"
"fBodyBodyGyroJerkMag-meanFreq()"
"angle(tBodyAccMean,gravity)"
"angle(tBodyAccJerkMean),gravityMean)"
"angle(tBodyGyroMean,gravityMean)"
"angle(tBodyGyroJerkMean,gravityMean)"
"angle(X,gravityMean)"
"angle(Y,gravityMean)"
"angle(Z,gravityMean)"
