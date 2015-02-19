# This script produces a width tidy dataset based on the data from the Human
#Activity Recognition Using Smartphones Data Set(UCI HAR Dataset)

library(dplyr)

# Creates dataset for test data
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt",
                           col.names = "Subject", colClasses = "factor")
activity_test <- read.table("UCI HAR Dataset/test/y_test.txt",
                            col.names = "Activity", colClasses = "factor")
features <- read.table("UCI HAR Dataset/features.txt")
variables_name <- features[,2]
data_test <- read.table("UCI HAR Dataset/test/X_test.txt",
                        col.names = variables_name, colClasses = "numeric")
dataset_test <- cbind(subject_test, activity_test, data_test)

# Creates dataset for train data
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt",
                            col.names = "Subject", colClasses = "factor")
activity_train <- read.table("UCI HAR Dataset/train/y_train.txt",
                             col.names = "Activity", colClasses = "factor")
data_train <- read.table("UCI HAR Dataset/train/X_train.txt",
                         col.names = variables_name, colClasses = "numeric")
dataset_train <- cbind(subject_train, activity_train, data_train)

# Merges the training and the test sets to create one data set (Assignment
#step 1)
dataset <- rbind(dataset_test, dataset_train)
dataset <- arrange(dataset, as.numeric(as.character(Subject)),
                   as.numeric(as.character(Activity)))

# Extracts only the measurements on the mean and standard deviation for each
#measurement (Assignment step 2) 
mean_and_std <- grep("mean|std", names(dataset), value = TRUE)
dataset_mean_std <- select(dataset, Subject, Activity, one_of(mean_and_std))

# Uses descriptive activity names to name the activities in the data set
#(Assignment step 3)
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
levels(dataset_mean_std$Activity) <- activity_labels$V2

# Appropriately labels the data set with descriptive variable names (Assignment
#step 4)
names(dataset_mean_std) <- gsub("\\.","",names(dataset_mean_std))
names(dataset_mean_std) <- gsub("BodyBody","Body",names(dataset_mean_std))
names(dataset_mean_std) <- gsub("^t","Time",names(dataset_mean_std))
names(dataset_mean_std) <- gsub("^f","Frequency",names(dataset_mean_std))
names(dataset_mean_std) <- gsub("mean","Mean",names(dataset_mean_std))
names(dataset_mean_std) <- gsub("std","Std",names(dataset_mean_std))

# Creates a width tidy data set with the average of each variable for each
#activity and each subject (Assignment step 5)
widthtidydata <- dataset_mean_std %>% group_by(Subject, Activity) %>%
    summarise_each(funs(mean))
colnames(widthtidydata)[3:81] <- gsub("^", "Avg", colnames(widthtidydata)[3:81])
widthtidydata <- arrange(widthtidydata, as.numeric(as.character(Subject)),
                        Activity)

# Creates a .txt file with the width tidy data table
write.table(widthtidydata, "widthTidyData.txt", row.names = FALSE)
