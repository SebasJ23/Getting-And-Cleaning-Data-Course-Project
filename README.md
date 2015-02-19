## Coursera "Getting and Cleaning Data" Course Project
This repository contains the final project for the Coursera "Getting and Cleaning Data" Course. The goal of the project is to write an R script that creates a tidy dataset based on the data from the Human Activity Recognition Using Smartphones Data Set(UCI HAR Dataset), available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Files
This depository contains the following files:
* README.md: Basic instructions about the repository and its contents.
* UCI HAR Dataset: Folder containing the raw data to be processed. More information about this data can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* run_analysis_long_tidy_data.R: Script which produces a long tidy data file with the name longTidyData.txt
* longTidyData.txt: Tidy dataset in long format, produced by executing run_analysis_long_tidy_data.R
* run_analysis_width_tidy_data.R: Script which produces a width tidy data file with the name widthTidyData.txt
* widthTidyData.txt: Tidy dataset in width format, produced by executing run_analysis_width_tidy_data.R
* CodeBook.md: The code book of the variables in tidy data set.
* codebook.R: Script used to help produce the part of CodeBook.md titled "Measurement variables abbreviations".

### What do the run_analysis.R scripts do?
Both the run_analysis_long_tidy_data.R and run_analysis_width_tidy_data.R scripts follow the same sequence of steps to extract, merge and create the tidy dataset, they only differ in the way the data is presented. The steps followed were:
1. Two datasets were extracted from the "test" and "train" folders using the functions read.table() and cbind(). This produced two separate datasets, one for the test data and one for the train data.
2. The two datasets were merged into one using the rbind() function and then sorted by the columns "Subject" and "Activity" with arrange().
3. A new dataset was created that contains only the measurements on the mean and standard deviation for each measurement. In order to do this, the function grep() was used to find such measurements and select() was used to create the new dataset. The columns "Subject" and "Activity" were also included.
4. Using the data on the file activity_labels.txt, the values in the column "Activity" were substituted for descriptive activity names by using the function levels().
5. Using the function gsub(), the names of the variables were changed as is explained in the codebook section titled "Modifications in the names of the measurement variables" (CodeBook.md file).
6. The tidy dataset was created with the average of each variable for each activity and each subject. To do this, the functions group_by() and summarise_each() for the function mean() were used. Finally, the dataset was again sorted by the columns "Subject" and "Activity" with arrange().
    * Note: For the long tidy dataset, before executing step 6, to put the data in the long format the melt() function was used, using the columns "Subject" and "Activity" as IDs and the rest of the variables as measurement variables for the function.
7. With the function write.table(), a .txt file containing the tidy dataset was saved in the working directory.

### How to use
1. Make sure the following packages are installed in R:
    * dplyr
    * reshape2 (only for run_analysis_long_tidy_data.R)
      * If these packages have not been installed, use:
   install.packages(c("dplyr", "reshape2"))
2. Set your working directory in R, with function setwd(), to the folder containing all the files in this repository
3. Execute one of the following scripts to obtain the tidy data set:
    * Run the run_analysis_long_tidy_data.R script if you want a long tidy dataset.
    * Run the run_analysis_width_tidy_data.R if you want a width tidy dataset
      * The scripts can be executed by using the function source("name of the script.R") or copying the code in the file and pasting it in the R console.
4. After the execution of the script has finished a .txt file will appear in the working directory. To take a view of the file in R:
    * If script run_analysis_long_tidy_data.R was executed, the file will be named longTidyData.txt. Therefore, input in the R console these two commands:
        * data <- read.table("longTidyData.txt", head = TRUE)
        * View(data)
    * If script run_analysis_width_tidy_data.R was executed, the file will be named widthTidyData.txt. Therefore, input in the R console these two commands:
        * data <- read.table("widthTidyData.txt", head = TRUE)
        * View(data)
