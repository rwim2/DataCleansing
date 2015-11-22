# README.md
##For Coursera Class - Getting and Cleansing Data

This Github repository contains the files for the final project for the above mentioned class. It contains a  script for performing the analysis (named run_analysis.R), a code book that describes the variables, the data, and any transformations (named CodeBook.md) and This README.md file which explains how the script works and design decisions.   

The output file was a tidy dataset that was uploaded in the appropiate area for the class. It can also be recreated by running the script in this reporitory using the input files mentioned later.

The purpose of this project is to demonstrate our ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

###Requirements
The R script called run_analysis.R that does the following:  

1. Merges the training and the test sets to create one data set.  
2. Extracts only the measurements on the mean and standard deviation for each measurement.   
3. Uses descriptive activity names to name the activities in the data set.  
4. Appropriately labels the data set with descriptive variable names.   
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.   

The script and all of the input files need to be in the same working directory. The output file will be created in this same working directory. 

The script produces a text file that can be read into R using the following command:

    activity_avg <- read.table("activity_avg.txt",header=TRUE)
 
Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data above represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

### Design Decisions

One of the difficulties in a projcet like this is that there is not a real client who is directing the project and available to discuss the requirements in more details. So it is left up to the student to interpret what is required.

1. One of the requirements was to extracts only the measurements on the mean and standard deviation for each measurement. In looking over the list of variables form the input I made certain decisions as to which measurements were one of those required. I decided to only select the input variables that contained __mean()__ or __std()__ in the name and did not include the __angle__ variables at the end of the input that used any of these variables. That is because the angle is not in and of itself a menas or standard deviation.

2. Another requirement was to use appropriately labels the data set with descriptive variable names. Since the input contained multiple observations per activity per student I appending  __.avg__ to my output variables to signify that these were all averages for the various students and activities. I choose to use the modified names of the input variables for each measurement where I supstituded dots for dashes and removed the parenthesis. This was done to make it easier for the persons who may use the dataset. If these characters were included then many times in there code they would need to quote the variable names. With the dot notation they would not need to do this since this is a stanard R naming scheme. 
