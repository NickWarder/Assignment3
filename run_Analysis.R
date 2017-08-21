##The submitted data set is tidy.
##The Github repo contains the required scripts.
##GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
##The README that explains the analysis files is clear and understandable.
##The work submitted for this project is the work of the student who submitted it.

##Get Raw Data
X_train <- read.table("UCI HAR Dataset//train//X_train.txt")
Y_train <- read.table("UCI HAR Dataset//train//Y_train.txt")
X_test <- read.table("UCI HAR Dataset//test//X_test.txt")
Y_test <- read.table("UCI HAR Dataset//test//Y_test.txt")
subject_train <- read.table("UCI HAR Dataset//train//subject_train.txt")
subject_test <- read.table("UCI HAR Dataset//test//subject_test.txt")
activityNames <- read.table("UCI HAR Dataset//activity_labels.txt") 
features <- read.table("UCI HAR Dataset//features.txt") 
  
##Clean up column names
setnames(subject_train,c("subjects"))
setnames(subject_test,c("subjects"))
setnames(Y_train,c("activities"))
setnames(Y_test,c("activities"))
setnames(features,c("ID","feature"))
setnames(activityNames,c("ID","activity"))

## Merge the training/test sets to create one set
mergedTrain <- cbind(X_train,Y_train,subject_train)
mergedTest <- cbind(X_train,Y_train,subject_train)
mergedData <- rbind(mergedTrain,mergedTest)
  
## Extract the measurements on mean and standard deviation for each measurement
##Reduce to mean and standard deviation
fVect <- c(as.vector(features[,"feature"]), "subject", "activity")
meanStdevData <- mergedData[, grepl("subject|activity|mean|std", fVect)]

## Use descriptive activity names to name the activities in the data set
meanStdevData$activities <- activityNames$activity[match(meanStdevData$activities,activityNames$ID)]

## Label the data set apppropriately with descriptive variable names
names(meanStdevData) <- sub("V",'',names(meanStdevData))
names(meanStdevData) <- features$feature[match(names(meanStdevData),features$ID)]
names(meanStdevData)[length(names(meanStdevData))]<-"subjects"
names(meanStdevData)[length(names(meanStdevData))-1]<-"activities"
names(meanStdevData)<-gsub("Acc", "Accelerometer", names(meanStdevData))
names(meanStdevData)<-gsub("BodyBody", "Body", names(meanStdevData))
names(meanStdevData)<-gsub("Mag", "Magnitude", names(meanStdevData))
names(meanStdevData)<-gsub("Gyro", "Gyroscope", names(meanStdevData))
names(meanStdevData)<-gsub("tBody", "TimeBody", names(meanStdevData))
names(meanStdevData)<-gsub("^t", "Time", names(meanStdevData))
names(meanStdevData)<-gsub("^f", "Frequency", names(meanStdevData))
names(meanStdevData)<-gsub("-meanFreq()", "Mean", names(meanStdevData))
names(meanStdevData)<-gsub("-mean()", "Mean", names(meanStdevData))
names(meanStdevData)<-gsub("-std()", "StandardDeviation", names(meanStdevData))
names(meanStdevData)<-gsub("*\\(\\)*", "", names(meanStdevData))

##  Create a second data set that is tidy with an average of each variable per activity/subject
tidyData <- aggregate(. ~subjects + activities, meanStdevData, mean)
tidyData <- tidyData[order(tidyData$subjects, tidyData$activities),]
write.table(tidyData, file="TidyData.txt", row.name=FALSE)
