## Codebook
This file is the codebook for both tidy datasets, whether it is in the long (longTidyData.txt) or the width format (widthTidyData.txt).
In both formats of the dataset, the first two columns correspond to the Subject and the Activity the subject was performing, which are considered as ID variables for this study.
In the long tidy dataset, which is composed of 4 columns, the 3rd column contains the name of each measurement and the 4th column its averaged value.
In the width tidy dataset, which is composed of 81 columns, columns 3 to 81 contain each one the averaged values for a measurement.

### Values in tidy data
For the tidy dataset, only the measurements that corresponded to a mean or a standard deviation in the UCI HAR Dataset where taken. The values in the tidy dataset correspond to the calculated average for each one of these measurements.

### Modifications in the names of the measurement variables
The names of the measurement variables where modified to make appropriate and descriptive labels. The modifications were as follows:
1. Characters "-" and "()" were removed
2. "t", when present at the beginning of a variable name, was replaced by "Time"
3. "f", when present at the beginning of a variable name, was replaced by "Frequency"
4. "mean" was replaced by "Mean"
5. "std" was replaced by "Std"
6. "BodyBody" was corrected for "Body"
7. In the width tidy dataset, "Avg" was added at the beggining of the averaged variables

### ID variables
* Subject: One of the persons in the study, identified by a number between 1 and 30.

* Activity: Description of the activity carried out by the subject. There were 6 possible activities:
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

### Measurement variables
The values for all variables are normalized and bounded within [-1,1]. They also do not have units.

### Measurement variables abbreviations
Note that the "Avg" at the beginning of each variable is only present in the width tidy dataset. For the long tidy dataset, disregard the words in parenthesis.
* AvgTimeBodyAccMeanX: (The average of) time domain body acceleration mean in X direction
* AvgTimeBodyAccMeanY: (The average of) time domain body acceleration mean in Y direction
* AvgTimeBodyAccMeanZ: (The average of) time domain body acceleration mean in Z direction
* AvgTimeBodyAccStdX: (The average of) time domain body acceleration standard deviation in X direction
* AvgTimeBodyAccStdY: (The average of) time domain body acceleration standard deviation in Y direction
* AvgTimeBodyAccStdZ: (The average of) time domain body acceleration standard deviation in Z direction
* AvgTimeGravityAccMeanX: (The average of) time domain gravity acceleration mean in X direction
* AvgTimeGravityAccMeanY: (The average of) time domain gravity acceleration mean in Y direction
* AvgTimeGravityAccMeanZ: (The average of) time domain gravity acceleration mean in Z direction
* AvgTimeGravityAccStdX: (The average of) time domain gravity acceleration standard deviation in X direction
* AvgTimeGravityAccStdY: (The average of) time domain gravity acceleration standard deviation in Y direction
* AvgTimeGravityAccStdZ: (The average of) time domain gravity acceleration standard deviation in Z direction
* AvgTimeBodyAccJerkMeanX: (The average of) time domain body acceleration Jerk signal mean in X direction
* AvgTimeBodyAccJerkMeanY: (The average of) time domain body acceleration Jerk signal mean in Y direction
* AvgTimeBodyAccJerkMeanZ: (The average of) time domain body acceleration Jerk signal mean in Z direction
* AvgTimeBodyAccJerkStdX: (The average of) time domain body acceleration Jerk signal standard deviation in X direction
* AvgTimeBodyAccJerkStdY: (The average of) time domain body acceleration Jerk signal standard deviation in Y direction
* AvgTimeBodyAccJerkStdZ: (The average of) time domain body acceleration Jerk signal standard deviation in Z direction
* AvgTimeBodyGyroMeanX: (The average of) time domain body gyroscope mean in X direction
* AvgTimeBodyGyroMeanY: (The average of) time domain body gyroscope mean in Y direction
* AvgTimeBodyGyroMeanZ: (The average of) time domain body gyroscope mean in Z direction
* AvgTimeBodyGyroStdX: (The average of) time domain body gyroscope standard deviation in X direction
* AvgTimeBodyGyroStdY: (The average of) time domain body gyroscope standard deviation in Y direction
* AvgTimeBodyGyroStdZ: (The average of) time domain body gyroscope standard deviation in Z direction
* AvgTimeBodyGyroJerkMeanX: (The average of) time domain body gyroscope Jerk signal mean in X direction
* AvgTimeBodyGyroJerkMeanY: (The average of) time domain body gyroscope Jerk signal mean in Y direction
* AvgTimeBodyGyroJerkMeanZ: (The average of) time domain body gyroscope Jerk signal mean in Z direction
* AvgTimeBodyGyroJerkStdX: (The average of) time domain body gyroscope Jerk signal standard deviation in X direction
* AvgTimeBodyGyroJerkStdY: (The average of) time domain body gyroscope Jerk signal standard deviation in Y direction
* AvgTimeBodyGyroJerkStdZ: (The average of) time domain body gyroscope Jerk signal standard deviation in Z direction
* AvgTimeBodyAccMagMean: (The average of) time domain body acceleration magnitude mean
* AvgTimeBodyAccMagStd: (The average of) time domain body acceleration magnitude standard deviation
* AvgTimeGravityAccMagMean: (The average of) time domain gravity acceleration magnitude mean
* AvgTimeGravityAccMagStd: (The average of) time domain gravity acceleration magnitude standard deviation
* AvgTimeBodyAccJerkMagMean: (The average of) time domain body acceleration Jerk signal magnitude mean
* AvgTimeBodyAccJerkMagStd: (The average of) time domain body acceleration Jerk signal magnitude standard deviation
* AvgTimeBodyGyroMagMean: (The average of) time domain body gyroscope magnitude mean
* AvgTimeBodyGyroMagStd: (The average of) time domain body gyroscope magnitude standard deviation
* AvgTimeBodyGyroJerkMagMean: (The average of) time domain body gyroscope Jerk signal magnitude mean
* AvgTimeBodyGyroJerkMagStd: (The average of) time domain body gyroscope Jerk signal magnitude standard deviation
* AvgFrequencyBodyAccMeanX: (The average of) frequency domain body acceleration mean in X direction
* AvgFrequencyBodyAccMeanY: (The average of) frequency domain body acceleration mean in Y direction
* AvgFrequencyBodyAccMeanZ: (The average of) frequency domain body acceleration mean in Z direction
* AvgFrequencyBodyAccStdX: (The average of) frequency domain body acceleration standard deviation in X direction
* AvgFrequencyBodyAccStdY: (The average of) frequency domain body acceleration standard deviation in Y direction
* AvgFrequencyBodyAccStdZ: (The average of) frequency domain body acceleration standard deviation in Z direction
* AvgFrequencyBodyAccMeanFreqX: (The average of) frequency domain body acceleration mean frequency in X direction
* AvgFrequencyBodyAccMeanFreqY: (The average of) frequency domain body acceleration mean frequency in Y direction
* AvgFrequencyBodyAccMeanFreqZ: (The average of) frequency domain body acceleration mean frequency in Z direction
* AvgFrequencyBodyAccJerkMeanX: (The average of) frequency domain body acceleration Jerk signal mean in X direction
* AvgFrequencyBodyAccJerkMeanY: (The average of) frequency domain body acceleration Jerk signal mean in Y direction
* AvgFrequencyBodyAccJerkMeanZ: (The average of) frequency domain body acceleration Jerk signal mean in Z direction
* AvgFrequencyBodyAccJerkStdX: (The average of) frequency domain body acceleration Jerk signal standard deviation in X direction
* AvgFrequencyBodyAccJerkStdY: (The average of) frequency domain body acceleration Jerk signal standard deviation in Y direction
* AvgFrequencyBodyAccJerkStdZ: (The average of) frequency domain body acceleration Jerk signal standard deviation in Z direction
* AvgFrequencyBodyAccJerkMeanFreqX: (The average of) frequency domain body acceleration Jerk signal mean frequency in X direction
* AvgFrequencyBodyAccJerkMeanFreqY: (The average of) frequency domain body acceleration Jerk signal mean frequency in Y direction
* AvgFrequencyBodyAccJerkMeanFreqZ: (The average of) frequency domain body acceleration Jerk signal mean frequency in Z direction
* AvgFrequencyBodyGyroMeanX: (The average of) frequency domain body gyroscope mean in X direction
* AvgFrequencyBodyGyroMeanY: (The average of) frequency domain body gyroscope mean in Y direction
* AvgFrequencyBodyGyroMeanZ: (The average of) frequency domain body gyroscope mean in Z direction
* AvgFrequencyBodyGyroStdX: (The average of) frequency domain body gyroscope standard deviation in X direction
* AvgFrequencyBodyGyroStdY: (The average of) frequency domain body gyroscope standard deviation in Y direction
* AvgFrequencyBodyGyroStdZ: (The average of) frequency domain body gyroscope standard deviation in Z direction
* AvgFrequencyBodyGyroMeanFreqX: (The average of) frequency domain body gyroscope mean frequency in X direction
* AvgFrequencyBodyGyroMeanFreqY: (The average of) frequency domain body gyroscope mean frequency in Y direction
* AvgFrequencyBodyGyroMeanFreqZ: (The average of) frequency domain body gyroscope mean frequency in Z direction
* AvgFrequencyBodyAccMagMean: (The average of) frequency domain body acceleration magnitude mean
* AvgFrequencyBodyAccMagStd: (The average of) frequency domain body acceleration magnitude standard deviation
* AvgFrequencyBodyAccMagMeanFreq: (The average of) frequency domain body acceleration magnitude mean frequency
* AvgFrequencyBodyAccJerkMagMean: (The average of) frequency domain body acceleration Jerk signal magnitude mean
* AvgFrequencyBodyAccJerkMagStd: (The average of) frequency domain body acceleration Jerk signal magnitude standard deviation
* AvgFrequencyBodyAccJerkMagMeanFreq: (The average of) frequency domain body acceleration Jerk signal magnitude mean frequency
* AvgFrequencyBodyGyroMagMean: (The average of) frequency domain body gyroscope magnitude mean
* AvgFrequencyBodyGyroMagStd: (The average of) frequency domain body gyroscope magnitude standard deviation
* AvgFrequencyBodyGyroMagMeanFreq: (The average of) frequency domain body gyroscope magnitude mean frequency
* AvgFrequencyBodyGyroJerkMagMean: (The average of) frequency domain body gyroscope Jerk signal magnitude mean
* AvgFrequencyBodyGyroJerkMagStd: (The average of) frequency domain body gyroscope Jerk signal magnitude standard deviation
* AvgFrequencyBodyGyroJerkMagMeanFreq: (The average of) frequency domain body gyroscope Jerk signal magnitude mean frequency
