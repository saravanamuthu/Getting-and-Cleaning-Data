# unzip data and set working directory

setwd("C:\\Users\\sudhas\\Documents\\coursera r studio working directory\\runanalysis3")
library(data.table)
library(reshape2) 

# read x and y training data into data frames
X_train <- read.table("X_train.txt") 
X_test <- read.table("X_test.txt") 

# read x and y test data into data frames
y_train <- read.table("y_train.txt") 
y_test <- read.table("y_test.txt") 

# read subject data of train and test into data frames 
subject_train <- read.table("subject_train.txt") 
subject_test <- read.table("subject_test.txt") 


# add column name for subject files 
names(subject_train) <- "subjectID" 
names(subject_test) <- "subjectID" 

# add column name for label files 
names(y_train) <- "activity" 
names(y_test) <- "activity"

# add column names for training and test files 
featureNames <- read.table("features.txt") 
names(X_train) <- featureNames$V2 
names(X_test) <- featureNames$V2 


# merge files into one dataset 
training <- cbind(subject_train, y_train, X_train) 
test <- cbind(subject_test, y_test, X_test) 
merge <- rbind(training, test) 

# Extract only the mean and standard deviation for each activity. 


colshavingmeanandstd <- grepl("mean\\(\\)",names(merge)) |
        grepl("std\\(\\)", names(merge)) 


# ensure that we also keep the subjectID and activity columns 
colshavingmeanandstd[1:2] <- TRUE 


# remove unnecessary columns 
merge <- merge[, colshavingmeanandstd] 


# convert the activity column from integer to activity names 
merge$activity <- factor(merge$activity, labels=c("Walking", 
"Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying")) 


# create tidy data set with the average of each variable 
# for each activity and each subject. 
 
melted <- melt(merge, id=c("subjectID","activity")) 
tidy <- dcast(melted, subjectID+activity ~ variable, mean) 


# write the tidy data set to a file 
write.csv(tidy, "tidy.txt", row.names=FALSE) 
