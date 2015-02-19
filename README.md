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

### How to use
1. Make sure the following packages are installed in R:
    * dplyr
    * reshape2 (only for run_analysis_long_tidy_data.R)
    If these packages have not been installed, use:
    install.packages(c("dplyr", "reshape2"))
2. Set your working directory in R, with function setwd(), to the folder containing all the files in this repository
3. Execute one of the following scripts to obtain the tidy data set:
    * Run the run_analysis_long_tidy_data.R script if you want a long tidy dataset.
    * Run the run_analysis_width_tidy_data.R if you want a width tidy dataset
    The scripts can be executed by using the function source("name of the script.R") or copying the code in the file and pasting it in the R console.
4. After the execution of the script has finished a .txt file will appear in the working directory. To take a view of the file in R:
    * If script run_analysis_long_tidy_data.R was executed, the file will be named longTidyData.txt. Therefore, input in the R console these two commands:
    data <- read.table("longTidyData.txt", head = TRUE)
    View(data)
    * If script run_analysis_width_tidy_data.R was executed, the file will be named widthTidyData.txt. Therefore, input in the R console these two commands:
    data <- read.table("widthTidyData.txt", head = TRUE)
    View(data)