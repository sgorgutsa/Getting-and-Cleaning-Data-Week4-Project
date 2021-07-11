# Getting-and-Cleaning-Data-Week4-Project
This repository contains my submission for the Week 4 peer-graded assignment of the "Getting and Cleaning Data" project. The main purpose of the R script is to transform the raw data set, which contains bulk data collected from smartphone's accelrometers during variuos physical activities for 30 subjects, into an independent tidy data set. Tidy data set contains only the average of each variable for each activity and each subject. 

A code book (CodeBook.md) describes the source data, all transformations performed to clean up the data and structure of the output dataset.

# Data Description
The source data represents the data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data for this project is available at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

# Code explanation
According to assignment requirements, R script:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

More comments are provided in the script itself and CodeBook.md

Note: since in my case source dataset in NOT in the same directory as the R script, a variable 'path2data' is introduced. It should contain path to the directory into which you unzipped 'UCI HAR Dataset'.

# Structure of the independent tidy data set
"tidydata.txt" contais 188 rows and 88 columns. The data for is grouped first by Subject (ID of the test subject, from 1 to 30), then by Actitivity. There are 6 types of Activity possible:

 1.WALKING
 2.WALKING_UPSTAIRS
 3.WALKING_DOWNSTAIRS
 4.SITTING
 5.STANDING
 6.LAYING

For the list of measurements see CodeBook.md
