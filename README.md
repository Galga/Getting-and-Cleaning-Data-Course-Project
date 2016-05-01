# Getting and Cleaning Data Course Project

The [run_analysis.R](/run_analysis.R/) script uses data collected from Samsung Galaxy SII smartphones and creates a 
single data set by merging files coming from the original zip file.  
This single data set is then filtered to keep only the mean and standard deviation variables. 

The activity identifiers have been replaced with more readable names, as well as the variable names.

Finally, a tidy data set (TidyMeans.txt) is created, which contains the mean value of each variable, for each pair of subject/activity

