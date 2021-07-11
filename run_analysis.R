# Load required libraries
library(data.table)
library(dplyr)

# Define location of the source data set
path2data <- "D:c2t3/Data Science/Cleaning Data"

# Read training data
subjectTrain <- read.table(paste(path2data,"/UCI HAR Dataset/train/subject_train.txt",sep=""), header = FALSE)
activityTrain <- read.table(paste(path2data, "/UCI HAR Dataset/train/y_train.txt",sep=""), header = FALSE)
featuresTrain <- read.table(paste(path2data,"/UCI HAR Dataset/train/X_train.txt",sep=""), header = FALSE)

# Read test data
subjectTest <- read.table(paste(path2data,"/UCI HAR Dataset/test/subject_test.txt",sep=""), header = FALSE)
activityTest <- read.table(paste(path2data,"/UCI HAR Dataset/test/y_test.txt",sep=""), header = FALSE)
featuresTest <- read.table(paste(path2data,"/UCI HAR Dataset/test/X_test.txt",sep=""), header = FALSE)

# Read features names and activity labels
featureNames <- read.table(paste(path2data,"/UCI HAR Dataset/features.txt",sep=""))
activityLabels <- read.table(paste(path2data,"/UCI HAR Dataset/activity_labels.txt",sep=""), header = FALSE)

# 1. Merging train and test datasets
subject <- rbind(subjectTrain, subjectTest)
activity <- rbind(activityTrain, activityTest)
features <- rbind(featuresTrain, featuresTest)


# Naming 'features' columns based on features names
colnames(features) <- t(featureNames[2]) # transpose 'featureNames' to have a row of columns names for 'features'

# Naming 'activity' and 'subject' data sets (of 1 column) 
colnames(activity) <- "Activity"
colnames(subject) <- "Subject"

# Merging 'features', 'activity' and 'subject' datasets
MergedData <- cbind(features,activity,subject)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# Still need last two columns for 'activity' and 'subject'
columns2extract <- c(grep(".*Mean.*|.*Std.*", names(MergedData), ignore.case=TRUE),dim(MergedData)[2]-1,dim(MergedData)[2]) 

extractedData <- MergedData[,columns2extract]

# Replace numeric activity variables to names from 'activityLabels' by turning 'activity' into factor

extractedData$Activity <- factor(extractedData$Activity, levels = activityLabels[,1], labels = activityLabels[,2])

# Turn 'subject' into factor as well
extractedData$Subject <- as.factor(extractedData$Subject)

# Prepare TidyData
TidyData <- aggregate(. ~Subject + Activity, extractedData, mean) # mean of each variable for each activity and subject
TidyData <- TidyData[order(TidyData$Subject,TidyData$Activity),] # sort by first subject, then by activity

# Write TidyData
write.table(TidyData, file = "tidydata.txt", row.names = FALSE) 