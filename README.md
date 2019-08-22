# Cleaning-Data-Coursera

This is the final course project for the Getting and Cleaning Data Coursera course. The R script, "Data Cleaning Coursera Project.R", does the following:

1) Download and unzips the dataset
2) Reads in all the necessary data files for train and test (subject, actual activity, smart phone measurements, activity predictions)
3) Merges the all the data into a single dataset
4) Extracts all mean and std columns 
5) Replaces activity code with actual activity name
6) Cleans the dataset's messy column names
7) Creates a tidy dataset that consists of the mean value of each measurement variables for each subject/activity pair.
8) Writes the tidy dataset to tidy_dataset.txt
