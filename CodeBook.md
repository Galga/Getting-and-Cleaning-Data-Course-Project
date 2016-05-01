# Code Book

## Steps of the script


   1. Downloaded the data set (if not downloaded yet)
   2. Unzipped the data set into the working dir
   3. Load the files into data frames
     * features.txt
     * activity_labels.txt
     * subject_train.txt
     * y_train.txt
     * X_train.txt
     * subject_test.txt
     * y_test.txt
     * X_test.txt
   4. Merge test and training data frames with rbind
   5. Rename columns of the 3 dataframes
   6. Filter the measurements to keep only the mean and standard deviation values
   7. Set descriptive activity names
   8. Set descriptive variable names
   9. Merge all the data sets into a single data frame
   10. Create a text file containing the mean value for each measurement for each pair of subject and activity



This code book describes the different fields in [TidyMeans.txt](/TidyMeans.txt/).

## Subject and Activity

* `Subject` - The ID of the subject (Integer).
* `Activity` - The name of the activity performed by the subject (String):
      * `WALKING` 
      * `WALKING UPSTAIRS` 
      * `WALKING DOWNSTAIRS` 
      * `SITTING` 
      * `STANDING` 
      * `LAYING` 

## Measurements

The values of these variables are the mean of all the measurements for each subject/activity pair (float). 

* TimeBodyAccMeanX
* TimeBodyAccMeanY
* TimeBodyAccMeanZ
* TimeBodyAccStdDevX
* TimeBodyAccStdDevY
* TimeBodyAccStdDevZ
* TimeGravityAccMeanX
* TimeGravityAccMeanY
* TimeGravityAccMeanZ
* TimeGravityAccStdDevX
* TimeGravityAccStdDevY
* TimeGravityAccStdDevZ
* TimeBodyAccJerkMeanX
* TimeBodyAccJerkMeanY
* TimeBodyAccJerkMeanZ
* TimeBodyAccJerkStdDevX
* TimeBodyAccJerkStdDevY
* TimeBodyAccJerkStdDevZ
* TimeBodyGyroMeanX
* TimeBodyGyroMeanY
* TimeBodyGyroMeanZ
* TimeBodyGyroStdDevX
* TimeBodyGyroStdDevY
* TimeBodyGyroStdDevZ
* TimeBodyGyroJerkMeanX
* TimeBodyGyroJerkMeanY
* TimeBodyGyroJerkMeanZ
* TimeBodyGyroJerkStdDevX
* TimeBodyGyroJerkStdDevY
* TimeBodyGyroJerkStdDevZ
* TimeBodyAccMagnitudeMean
* TimeBodyAccMagnitudeStdDev
* TimeGravityAccMagnitudeMean
* TimeGravityAccMagnitudeStdDev
* TimeBodyAccJerkMagnitudeMean
* TimeBodyAccJerkMagnitudeStdDev
* TimeBodyGyroMagnitudeMean
* TimeBodyGyroMagnitudeStdDev
* TimeBodyGyroJerkMagnitudeMean
* TimeBodyGyroJerkMagnitudeStdDev
* FrequencyBodyAccMeanX
* FrequencyBodyAccMeanY
* FrequencyBodyAccMeanZ
* FrequencyBodyAccStdDevX
* FrequencyBodyAccStdDevY
* FrequencyBodyAccStdDevZ
* FrequencyBodyAccJerkMeanX
* FrequencyBodyAccJerkMeanY
* FrequencyBodyAccJerkMeanZ
* FrequencyBodyAccJerkStdDevX
* FrequencyBodyAccJerkStdDevY
* FrequencyBodyAccJerkStdDevZ
* FrequencyBodyGyroMeanX
* FrequencyBodyGyroMeanY
* FrequencyBodyGyroMeanZ
* FrequencyBodyGyroStdDevX
* FrequencyBodyGyroStdDevY
* FrequencyBodyGyroStdDevZ
* FrequencyBodyAccMagnitudeMean
* FrequencyBodyAccMagnitudeStdDev
* FrequencyBodyAccJerkMagnitudeMean
* FrequencyBodyAccJerkMagnitudeStdDev
* FrequencyBodyGyroMagnitudeMean
* FrequencyBodyGyroMagnitudeStdDev
* FrequencyBodyGyroJerkMagnitudeMean
* FrequencyBodyGyroJerkMagnitudeStdDev



