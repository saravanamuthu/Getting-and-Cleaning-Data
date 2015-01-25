# Introduction

## A tidy data set with the average of each variable for each activity and each subject collected from the accelerometers from the Samsung Galaxy S smartphone

## steps done to create the tiday data set.
The script run_analysis.R performs the following steps to generate the tidy data set. 


Read the X and Y training data which have the file names as "X_train.txt" and "X_test.txt" and assign it to X_train and X_test, similarly "y_train.txt" and "y_test.txt" and assign it to y_train and y_test 


Read the subject data of training and test  which have the file names as "subject_train.txt" and "subject_test.txt" to subject_train and subject_test

Name the column names for subject files of training and test 

Name the column name for label files 

Name the column names for training and test data from "features.txt" to x_train and x_test

Merge the training and test data into one single data set using rbind

Extract the column names and create a new data set which have mean or standard deviation with the first 2 rows which are subject id and activity

Assign the acitivity names instead of the numbers


Create the final tidy data set which has the average of each variable for each activity and each subject


### The tidy data set contains 180 observations of 68 variables


### Subjects :No of subjects 30

### Activities :"Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"


### Variables :The below list contains the list of variables having mean or standard deviation -66 variables

 "tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"          
 "tBodyAcc-mean()-Z"           "tBodyAcc-std()-X"            "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"           
 "tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"        "tGravityAcc-mean()-Z"        "tGravityAcc-std()-X"        
 "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"         "tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"      
 "tBodyAccJerk-mean()-Z"       "tBodyAccJerk-std()-X"        "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"       
 "tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"          "tBodyGyro-std()-X"          
 "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"           "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"     
 "tBodyGyroJerk-mean()-Z"      "tBodyGyroJerk-std()-X"       "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
 "tBodyAccMag-mean()"          "tBodyAccMag-std()"           "tGravityAccMag-mean()"       "tGravityAccMag-std()"       
 "tBodyAccJerkMag-mean()"      "tBodyAccJerkMag-std()"       "tBodyGyroMag-mean()"         "tBodyGyroMag-std()"         
 "tBodyGyroJerkMag-mean()"     "tBodyGyroJerkMag-std()"      "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
 "fBodyAcc-mean()-Z"           "fBodyAcc-std()-X"            "fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"           
 "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"       "fBodyAccJerk-mean()-Z"       "fBodyAccJerk-std()-X"       
 "fBodyAccJerk-std()-Y"        "fBodyAccJerk-std()-Z"        "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
 "fBodyGyro-mean()-Z"          "fBodyGyro-std()-X"           "fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"          
 "fBodyAccMag-mean()"          "fBodyAccMag-std()"           "fBodyBodyAccJerkMag-mean()"  "fBodyBodyAccJerkMag-std()"  
 "fBodyBodyGyroMag-mean()"     "fBodyBodyGyroMag-std()"      "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()" 