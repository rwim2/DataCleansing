library(tidyr)
library(plyr)

# set working direcotry
setwd("C:/Users/rwim2/Desktop/R-Coursera")

# Read Test Data and Add Subject and Activity
data <- read.table("./data/UCI_HAR/test/X_test.txt")
subject <- read.table("./data/UCI_HAR/test/subject_test.txt")
activity <- read.table("./data/UCI_HAR/test/Y_test.txt")
test <- cbind(subject, activity, data)

# Read Train Data and Add Subject and Activity
data <- read.table("./data/UCI_HAR/train/X_train.txt")
subject <- read.table("./data/UCI_HAR/train/subject_train.txt")
activity <- read.table("./data/UCI_HAR/train/Y_train.txt")
train <- cbind(subject, activity, data)

# Combine into one dataseet
all_data <- rbind(test, train)

# Remove temporary data frames
rm(data,subject,activity,test,train)

# Select only the Key columns and measurements for mean and standard deviation
mydata <- all_data[c(1,2,3,4,5,6,7,8,
                     43,44,45,46,47,48,
                     83,84,85,86,87,88,
                     123,124,125,126,127,128,
                     163,164,165,166,167,168,
                     203,204,216,217,229,230,
                     242,243,255,256,
                     268,269,270,271,272,273,
                     347,348,349,350,351,352,
                     426,427,428,429,430,431,
                     505,506,518,519,
                     531,532,544,545)]

# Replave Activity number with descriptive names
actnames <- read.table("./data/UCI_HAR/activity_labels.txt")
for(i in seq_len(nrow(mydata))){  #Make replacements
    mydata[i,2] <- as.character(actnames[mydata[i,2],2])
}   

# Add Descriptive labels to all variable names
allabels <- read.table("./data/UCI_HAR/features.txt")
#    Insert the Lables for Subject ID and Activity columns
df1 <- data.frame(-1,"subjectID")
colnames(df1) <- c("V1","V2")
df2 <- data.frame(0,"activity")
colnames(df2) <- c("V1","V2")
allabels <- rbind(df1,df2,allabels)

mylabels <- allabels[c(1,2,3,4,5,6,7,8,
                     43,44,45,46,47,48,
                     83,84,85,86,87,88,
                     123,124,125,126,127,128,
                     163,164,165,166,167,168,
                     203,204,216,217,229,230,
                     242,243,255,256,
                     268,269,270,271,272,273,
                     347,348,349,350,351,352,
                     426,427,428,429,430,431,
                     505,506,518,519,
                     531,532,544,545),]


for(i in seq_len(68)){  #Make replacements
    colnames(mydata)[i] <- as.character(mylabels[i,2])
}

# Create Long data so we can average all the values
data_long <- gather(mydata, mykey, myvalue, 3:68, na.rm = TRUE)


# Average the values by SubjectID, Activity and Key
data_avg <- ddply(data_long, c("subjectID", "activity", "mykey"), 
                   summarize, avg_value = mean(myvalue, na.rm = TRUE) )

# Create Wide Dataframe as Final Output
data_wide <- spread(data_avg, mykey, avg_value)

# Write Data Frame to a File
write.table(data_wide, file = "activity_sum.txt", row.names = FALSE)
