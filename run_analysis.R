# Load required libraries
library(data.table)
library(dplyr)


# Read training data
subjectTrain <- read.table("D:c2t3/Data Science/Cleaning Data/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
activityTrain <- read.table("D:c2t3/Data Science/Cleaning Data/UCI HAR Dataset/train/y_train.txt", header = FALSE)
featuresTrain <- read.table("D:c2t3/Data Science/Cleaning Data/UCI HAR Dataset/train/X_train.txt", header = FALSE)

# Read test data
subjectTest <- read.table("D:c2t3/Data Science/Cleaning Data/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
activityTest <- read.table("D:c2t3/Data Science/Cleaning Data/UCI HAR Dataset/test/y_test.txt", header = FALSE)
featuresTest <- read.table("D:c2t3/Data Science/Cleaning Data/UCI HAR Dataset/test/X_test.txt", header = FALSE)

# Read features names and activity labels
featureNames <- read.table("D:c2t3/Data Science/Cleaning Data/UCI HAR Dataset/features.txt")
activityLabels <- read.table("D:c2t3/Data Science/Cleaning Data/UCI HAR Dataset/activity_labels.txt", header = FALSE)

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

#extractedData$Activity <- as.character(extractedData$Activity)
#for (i in 1:6)
#    {
#    extractedData$Activity[extractedData$Activity == i] <- as.character(activityLabels[i,2])
#    }

extractedData$Activity <- factor(extractedData$Activity, levels = activityLabels[,1], labels = activityLabels[,2])

# Turn 'subject' into factor as well
extractedData$Subject <- as.factor(extractedData$Subject)

# Prepare TidyData
TidyData <- aggregate(. ~Subject + Activity, extractedData, mean) # mean of each variable for each activity and subject
TidyData <- TidyData[order(TidyData$Subject,TidyData$Activity),] # sort by first subject, then by activity

# Write TidyData
write.table(TidyData, file = "tidydata.txt", row.names = FALSE) 