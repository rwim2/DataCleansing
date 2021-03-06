library(tidyr)
library(plyr)

# Read Test Data and Add Subject and Activity
data <- read.table("X_test.txt")
subject <- read.table("subject_test.txt")
activity <- read.table("Y_test.txt")
test <- cbind(subject, activity, data)

# Read Train Data and Add Subject and Activity
data <- read.table("X_train.txt")
subject <- read.table("subject_train.txt")
activity <- read.table("Y_train.txt")
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
actnames <- read.table("activity_labels.txt")
for(i in seq_len(nrow(mydata))){  #Make replacements
    mydata[i,2] <- as.character(actnames[mydata[i,2],2])
}   

# Add Descriptive labels to all variable names
# 1. Read in the labels from the full input file
allabels <- read.table("features.txt")

# 2. Insert the Lables for Subject ID and Activity columns
df1 <- data.frame(-1,"subjectID")
colnames(df1) <- c("V1","V2")
df2 <- data.frame(0,"activity")
colnames(df2) <- c("V1","V2")
allabels <- rbind(df1,df2,allabels)

# 3. Select only the labels that correspond to the columns we selected for the data
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


# 4. Now replace the lables names in our data frame but replace the "()" characters
#    with a single period and add ".avg" to the end of columns 3 to the 68.
#    This will make the labels better when reading the data back into R when we 
#    write the data frame out as a text file.
for(i in seq_len(68)){
    label <- as.character(mylabels[i,2])
    if(i > 2){
        label <- sub("()","",label, fixed = TRUE)
        label <- gsub("-",".",label, fixed = TRUE)
        label <- paste(label, ".avg", sep = "") 
    }
    colnames(mydata)[i] <- label
}

# Create Long data so we can average all the values
data_long <- gather(mydata, mykey, myvalue, 3:68, na.rm = TRUE)


# Average the values by SubjectID, Activity and Key
data_avg <- ddply(data_long, c("subjectID", "activity", "mykey"), 
                   summarize, avg_value = mean(myvalue, na.rm = TRUE) )

# Create Wide Dataframe as Final Output
data_wide <- spread(data_avg, mykey, avg_value)

# Write Data Frame to a File
write.table(data_wide, file = "activity_avg.txt", row.names = FALSE)
