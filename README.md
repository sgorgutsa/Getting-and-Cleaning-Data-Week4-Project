# Getting-and-Cleaning-Data-Week4-Project
This repository contains my submission for the Week 4 peer-graded assignment of the "Getting and Cleaning Data" project. The main purpose of the R script is to transform the raw data set, which contains bulk data collected from smartphone's accelrometers during variuos physical activities for 30 subjects, into an independent tidy data set. Tidy data set contains only the average of each variable for each activity and each subject. 

A code book (CodeBook.md) describes the source data, all transformations performed to clean up the data and structure of the output dataset.

# Source Data
The source data represents the data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data for this project is available at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

# Code explanation
According to assignment requirements, "run_analysis.R" performs the following steps:

1. Reads Train datasets from the source data
2. Reads Test datasets from the source data 
3. Reads features names and activity labels from the source data.
4. Merges Train and Test datasets 
5. Names 'features' columns based on features names fromt the source data
6. Names 'activity' and 'subject' data sets 
7. Merges 'features', 'activity' and 'subject' datasets into one data set
8. Extracts only the measurements on the mean and standard deviation for each measurement.
9. Generates and writes "tidydata.txt" containing the average of each variable for each activity and each subject (sorted first by subject, then by activity)

More comments are provided in the script itself.

# Structure of the independent tidy data set
"tidydata.txt" contais 188 rows and 88 columns. The data for is grouped first by Subject (ID of the test subject, from 1 to 30), then by Actitivity. There are 6 types of Activity possible:

 1.WALKING  
 2.WALKING_UPSTAIRS  
 3.WALKING_DOWNSTAIRS  
 4.SITTING  
 5.STANDING  
 6.LAYING  

For the list of measurements see CodeBook.md
