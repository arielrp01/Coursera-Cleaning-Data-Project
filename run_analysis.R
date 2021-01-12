
# Load required dependencies and initial file prep

library(dplyr)

filename <- "UCI_HAR_Dataset.zip"

# Checking for downloaded archive 

if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, filename, method="curl")
}  

# Checking for unzipped folder 

if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

# Create data frames

features <- read.table("UCI HAR Dataset/features.txt")
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("activityID", "activityType"))
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subjectID")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features[,2])
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activityID")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features[,2])
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activityID")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subjectID")

# Step 1 - Merges the training and the test sets to create one data set

x_final <- rbind(x_train, x_test)
y_final <- rbind(y_train, y_test)
subject_final <- rbind(subject_train, subject_test)
merge_data <- cbind(subject_final, x_final, y_final)

# Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement

clean_data <- merge_data %>% select(subjectID, activityID, contains("mean"), contains("std"))

# Step 3 - Uses descriptive activity names to name the activities in the data set

clean_data$activityID <- activities[clean_data$activityID, 2]

# Step 4 - Appropriately labels the data set with descriptive activity names

names(clean_data)[2] = "activity"
names(clean_data) <- gsub("std", "StandardDeviation", names(clean_data), ignore.case = TRUE)
names(clean_data) <- gsub("mean", "Mean", names(clean_data), ignore.case = TRUE)
names(clean_data) <- gsub("^(t)", "Time", names(clean_data), ignore.case = TRUE)
names(clean_data) <- gsub("^(f)", "Frequency", names(clean_data), ignore.case = TRUE)
names(clean_data) <- gsub("tBody", "TimeBody", names(clean_data), ignore.case = TRUE)
names(clean_data) <- gsub("Acc", "Accelerometer", names(clean_data), ignore.case = TRUE)
names(clean_data) <- gsub("BodyBody", "Body", names(clean_data), ignore.case = TRUE)
names(clean_data) <- gsub("Gyro", "Gyroscope", names(clean_data), ignore.case = TRUE)
names(clean_data) <- gsub("Mag", "Magnitude", names(clean_data), ignore.case = TRUE)
names(clean_data) <- gsub("angle", "Angle", names(clean_data), ignore.case = TRUE)
names(clean_data) <- gsub("gravity", "Gravity", names(clean_data), ignore.case = TRUE)

# Step 5 - Creates a second, independent tidy data set with the average of each variable for each activity and each subject

TidyData <- clean_data %>%
  group_by(subjectID, activity) %>%
  summarise_all(funs(mean))

write.table(TidyData, "TidyData.txt", row.name=FALSE)
