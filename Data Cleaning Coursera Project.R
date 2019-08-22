

library(data.table)
library(dplyr)


unzip(zipfile="./datasets.zip",exdir=".")
list.files("./UCI HAR Dataset", recursive = T)




# **Step 1**


# Read in the various train, test, feature names, activity, and subject datasets


x_train <- read.table("./UCI HAR Dataset/train/X_train.txt",header = FALSE)
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt",header = FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt",header = FALSE)

y_train <- read.table("./UCI HAR Dataset/train/y_train.txt",header = FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt",header = FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt",header = FALSE)

features <- read.table("./UCI HAR Dataset/features.txt",header = FALSE)
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",header = FALSE)



#Add column names to each dataset

features_names <- features[,2]
colnames(x_train) <- features_names
colnames(x_test) <- features_names

colnames(y_train) <- "activity"
colnames(y_test) <- "activity"

colnames(subject_train) <- "subject"
colnames(subject_test) <- "subject"

colnames(activity_labels) <- c("activity_ID", "activity_name")



#Create the merged datasets

training_data <- cbind(y_train, subject_train, x_train) # Merge the train sets
testing_data <- cbind(y_test, subject_test, x_test) # Merge the test sets

data <- rbind(training_data, testing_data) #Merge the train and test sets together




# **Step 2**

#Extract the columns that have mean or std in the their name. Also extract the activity number and subject number columns.


#Return logical vector of columns that who's names match patterns
mean_std_cols <- (grepl('*mean*', colnames(data)) | grepl('*std*', colnames(data)) | grepl('activity', colnames(data)) | grepl('subject', colnames(data)))

# Create dataset that only has mean and std columns
data_mean_std <- data[, mean_std_cols == T] 




# **Step 3**

# Uses descriptive activity names to name the activities in the data set
# Merge the activities dataset to main dataset and remove duplicated columns

data_merged <- merge(data_mean_std, activity_labels, by.x = 'activity', by.y = 'activity_ID') 
data_merged <- data_merged %>% select(-c(activity,activity_name.y))
data_merged <- data_merged %>% mutate(activity = activity_name.x) %>% select(-activity_name.x)



# **Step 4**

# Appropriately labels the data set with descriptive variable names.
# Use regex to clean names

names(data_merged) <- gsub("^t", "Time_", names(data_merged))
names(data_merged) <- gsub("^f", "Freq_", names(data_merged))
names(data_merged) <- gsub("-", "_", names(data_merged))
names(data_merged) <- gsub("Acc", "_Accelerometer", names(data_merged))
names(data_merged) <- gsub("Jerk", "_Jerk", names(data_merged))
names(data_merged) <- gsub("Gyro", "_Gyroscope", names(data_merged))
names(data_merged) <- gsub("Mag", "_Magnitude", names(data_merged))
names(data_merged) <- gsub("mean", "Mean", names(data_merged), ignore.case = TRUE)
names(data_merged) <- gsub("std", "STD", names(data_merged), ignore.case = TRUE)
names(data_merged) <- gsub("freq", "Frequency", names(data_merged), ignore.case = TRUE)
names(data_merged) <- gsub("angle", "_Angle", names(data_merged))
names(data_merged) <- gsub("gravity", "_Gravity", names(data_merged))




# **Step 5**

# Creates a second, independent tidy data set with the average of each variable 
# for each activity and each subject.
data <- data_merged %>% group_by(subject, activity) %>% summarise_all(funs(mean))
write.table(data, "tidy_dataset.txt", row.names = F)




