#Download  data
FileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
FileDest <- './dataset.zip'
if (!file.exists(FileDest)){
        download.file(FileUrl, FileDest)
}

#Extract data
Dir <- "./UCI HAR Dataset"
if(!file.exists(Dir)) {
        unzip(FileDest) 
}
setwd(Dir)

#Load Data
FeaturesNames <- read.table("features.txt")
ActivityLabels <- read.table("activity_labels.txt")
ActivityLabels[,2] <- gsub("_"," ",ActivityLabels[,2])

#Load Training Data
SubjectTrain <- read.table("./train/subject_train.txt")
Y_Train <- read.table("./train/y_train.txt")
X_Train <- read.table("./train/X_train.txt")

#Load Testing Data
SubjectTest <- read.table("./test/subject_test.txt")
Y_Test <- read.table("./test/y_test.txt")
X_Test <- read.table("./test/X_test.txt")


#Merge Data
Subjects <- rbind(SubjectTrain, SubjectTest)
Activities <- rbind(Y_Train, Y_Test)
Data <- rbind(X_Train, X_Test)

#Rename columns of the different datasets
colnames(Subjects) <- "Subject"
colnames(Activities) <- "Activity"
colnames(Data) <- FeaturesNames[,2]

#Filter Data 
ColIndex <- grep("(mean|std)\\(\\)", names(Data), ignore.case=TRUE)
FilteredData <- Data[,ColIndex]

#Set descriptive activity names
Activities[1] <- factor(Activities[,1] , labels = ActivityLabels[,2])


#Set descriptive column names
names(FilteredData)<-gsub("BodyBody", "Body", names(FilteredData))
names(FilteredData)<-gsub("Mag", "Magnitude", names(FilteredData))
names(FilteredData)<-gsub("^t", "Time", names(FilteredData))
names(FilteredData)<-gsub("^f", "Frequency", names(FilteredData))
names(FilteredData)<-gsub("tBody", "TimeBody", names(FilteredData))
names(FilteredData)<-gsub("-mean\\(\\)", "Mean", names(FilteredData), ignore.case = TRUE)
names(FilteredData)<-gsub("-std\\(\\)", "StdDev", names(FilteredData), ignore.case = TRUE)
names(FilteredData)<-gsub("-freq\\(\\)", "Frequency", names(FilteredData), ignore.case = TRUE)
names(FilteredData)<-gsub("-", "", names(FilteredData))

#Merge the datasets into a single tidy dataframe
TidyDataset <- cbind(Subjects,Activities,FilteredData)


#Second dataset calculating the mean for each variable 
#except for the Subject and the activity
library(dplyr)
TidyMean <- group_by(TidyDataset, Subject, Activity) %>% summarise_each(funs(mean))
write.table(TidyMean, file="TidyMeans.txt", row.names = FALSE)
