---
title: "CodeBook.md"
output: html_document
---

##DATA DICTIONARY


__NOTE:__ The measurements staring with the third variable are averages rolled up by subjectID and activity. This is denoted by __.avg__ as the last qualifier in the label for each measurement variable. The name of the variables is followed by the indented description and then an indented list of values. For the measurements the min and max are shown. 

The variables names denote the following characteristics:

* Leading t or f is based on time or frequency measurements.
* Body = related to body movement.
* Gravity = acceleration of gravity
* Acc = accelerometer measurement
* Gyro = gyroscopic measurements
* Jerk = sudden movement acceleration
* Mag = magnitude of movement

The units given are g's for the accelerometer and rad/sec for the gyro and g/sec and rad/sec/sec for the corresponding jerks.

subjectID

* Subject ID  
    + 1..30 .Unique number assigned to each subject in the study  
        
activity

* Activity Name  
    + LAYING  
    + SITTING  
    + STANDING  
    + WALKING  
    + WALKING_DOWNSTAIRS  
    + WALKING_UPSTAIRS         

tBodyAcc.mean.X.avg

* Time Domain Signal Body Acceleration Mean X Direction  
    + 0.2215982 to 0.301461  
        
tBodyAcc.mean.Y.avg

* Time Domain Signal Body Acceleration Mean Y Direction
    + -0.04051395 to 0.001308288
        
tBodyAcc.mean.Z.avg

* Time Domain Signal Body Acceleration Mean Y Direction
    + -0.1525139 to 0.07537847
    
tBodyAcc.std.X.avg

* Time Domain Signal Body Acceleration Standard Deviation X Direction
    + -0.9960686 to 0.6269171
        
tBodyAcc.std.Y.avg

* Time Domain Signal Body Acceleration Standard Deviation Y Direction
    + -0.9902409 to 0.616937

tBodyAcc.std.Z.avg

* Time Domain Signal Body Acceleration Standard Deviation Z Direction
    + -0.9876587 to 0.6090179

tGravityAcc.mean.X.avg

* Time Domain Signal Gravity Acceleration Mean X Direction
    + -0.6800432 to 0.9745087

tGravityAcc.mean.Y.avg

* Time Domain Signal Gravity Acceleration Mean Y Direction
    + -0.4798948 to 0.9565938
    
tGravityAcc.mean.Z.avg

* Time Domain Signal Gravity Acceleration Mean Z Direction
    + -0.4950887 to 0.957873

tGravityAcc.std.X.avg

* Time Domain Signal Gravity Acceleration Standard Deviation X Direction
    + -0.9967642 to -0.8295549
    
tGravityAcc.std.Y.avg

* Time Domain Signal Gravity Acceleration Standard Deviation Y Direction
    + -0.9942476 to -0.6435784
    
tGravityAcc.std.Z.avg

* Time Domain Signal Gravity Acceleration Standard Deviation Z Direction
    + -0.9909572 to -0.6101612
    
tBodyAccJerk.mean.X.avg

* Time Domain Signal Body Acceleration Jerk Mean X Direction
    + 0.0426881 to 0.130193

tBodyAccJerk.mean.Y.avg

* Time Domain Signal Body Acceleration Jerk Mean Y Direction
    + -0.03868721 to 0.05681859 

tBodyAccJerk.mean.Z.avg

* Time Domain Signal Body Acceleration Jerk Mean Y Direction
    + -0.06745839 to 0.03805336

tBodyAccJerk.std.X.avg

* Time Domain Signal Body Acceleration Jerk Standard Deviation X Direction
    + -0.9946045 to 0.544273
    
tBodyAccJerk.std.Y.avg

* Time Domain Signal Body Acceleration Jerk Standard Deviation Y Direction
    + -0.9895136 to 0.3553067

tBodyAccJerk.std.Z.avg

* Time Domain Signal Body Acceleration Jerk Standard Deviation Z Direction
    + -0.9932883 to 0.03101571

tBodyGyro.mean.X.avg

* Time Domain Signal Body Gyroscope Mean X Direction 
    + -0.2057754 to 0.1927045

tBodyGyro.mean.Y.avg

* Time Domain Signal Body Gyroscope Mean Y Direction
    + -0.2042054 to 0.02747076

tBodyGyro.mean.Z.avg

* Time Domain Signal Body Gyroscope Mean Z Direction
    + -0.0724546 to 0.1791021 

tBodyGyro.std.X.avg

* Time Domain Signal Body Gyroscope Standard Deviation X Direction
    + -0.9942766 to 0.2676572 

tBodyGyro.std.Y.avg

* Time Domain Signal Body Gyroscope Standard Deviation Y Direction
    + -0.9942105 to 0.4765187 

tBodyGyro.std.Z.avg

* Time Domain Signal Body Gyroscope Standard Deviation Z Direction
    + -0.9855384 to 0.5648758 

tBodyGyroJerk.mean.X.avg

* Time Domain Signal Body Gyroscope Jerk Mean X Direction 
    + -0.1572125 to -0.02209163 

tBodyGyroJerk.mean.Y.avg

* Time Domain Signal Body Gyroscope Jerk Mean Y Direction 
    + -0.07680899 to -0.01320228 

tBodyGyroJerk.mean.Z.avg

* Time Domain Signal Body Gyroscope Jerk Mean Z Direction 
    + -0.09249985 to -0.006940664 

tBodyGyroJerk.std.X.avg

* Time Domain Signal Body Gyroscope Jerk Standard Deviation X Direction 
    + -0.9965425 to 0.1791486 

tBodyGyroJerk.std.Y.avg

* Time Domain Signal Body Gyroscope Jerk Standard Deviation Y Direction 
    + -0.9970816 to 0.2959459

tBodyGyroJerk.std.Z.avg

* Time Domain Signal Body Gyroscope Jerk Standard Deviation Z Direction 
    + -0.9953808 to 0.1932065 

tBodyAccMag.mean.avg

* Time Domain Signal Body Acceleration Magnitude Mean 
    + -0.9864932 to 0.6446043 

tBodyAccMag.std.avg

* Time Domain Signal Body Acceleration Magnitude Standard Deviation
    + -0.9864645 to 0.4284059 

tGravityAccMag.mean.avg

* Time Domain Signal Gravitational Acceleration Magnitude Mean 
    + -0.9864932 to 0.6446043 

tGravityAccMag.std.avg

* Time Domain Signal Gravitational Acceleration Magnitude Standard Deviation 
    + -0.9864645 to 0.4284059 

tBodyAccJerkMag.mean.avg

* Time Domain Signal Body Acceleration Jerk Magnitude Mean 
    + -0.9928147 to 0.4344904 

tBodyAccJerkMag.std.avg

* Time Domain Signal Body Acceleration Jerk Magnitude Standard Deviation 
    + -0.9946469 to 0.4506121 

tBodyGyroMag.mean.avg

* Time Domain Signal Body Gyroscope Magnitude Mean
    + -0.9807408 to 0.4180046 

tBodyGyroMag.std.avg

* Time Domain Signal Body Gyroscope Magnitude Standard Deviation
    + -0.9813727 to 0.299976 

tBodyGyroJerkMag.mean.avg

*  Time Domain Signal Body Gyroscope Jerk Magnitude Mean
    + -0.9973225 to 0.08758166 

tBodyGyroJerkMag.std.avg

* Time Domain Signal Body Gyroscope Jerk Magnitude Standard Deviation
    + -0.9976661 to 0.2501732 

fBodyAcc.mean.X.avg

* Fast Fourier Transform Body Acceleration Mean X Direction
    + -0.9952499 to 0.537012 

fBodyAcc.mean.Y.avg

* Fast Fourier Transform Body Acceleration Mean Y Direction
    + -0.9890343 to 0.5241877

fBodyAcc.mean.Z.avg

* Fast Fourier Transform Body Acceleration Mean Z Direction
    + -0.9894739 to 0.280736 

fBodyAcc.std.X.avg

* Fast Fourier Transform Body Acceleration Standard Deviation X Direction
    + -0.9966046 to 0.6585065 

fBodyAcc.std.Y.avg

* Fast Fourier Transform Body Acceleration Standard Deviation Y Direction
    + -0.9906804 to 0.5601913 

fBodyAcc.std.Z.avg

* Fast Fourier Transform Body Acceleration Standard Deviation Z Direction
    + -0.9872248 to 0.6871242 

fBodyAccJerk.mean.X.avg

* Fast Fourier Transform Body Acceleration Jerk Mean X Direction
    + -0.9946308 to 0.4743173 

fBodyAccJerk.mean.Y.avg

* Fast Fourier Transform Body Acceleration Jerk Mean Y Direction
    + -0.9893988 to 0.2767169 

fBodyAccJerk.mean.Z.avg

* Fast Fourier Transform Body Acceleration Jerk Mean Z Direction
    + -0.9920184 to 0.1577757 

fBodyAccJerk.std.X.avg

* Fast Fourier Transform Body Acceleration Jerk Standard Deviation X Direction
    + -0.9950738 to 0.4768039 

fBodyAccJerk.std.Y.avg

* Fast Fourier Transform Body Acceleration Jerk Standard Deviation Y Direction
    + -0.9904681 to 0.3497713 

fBodyAccJerk.std.Z.avg

* Fast Fourier Transform Body Acceleration Jerk Standard Deviation Z Direction
    + -0.9931078 to -0.006236475 

fBodyGyro.mean.X.avg

* Fast Fourier Transform Body Gyroscope Mean X Direction
    + -0.9931226 to 0.4749624 

fBodyGyro.mean.Y.avg

* Fast Fourier Transform Body Gyroscope Mean Y Direction
    + -0.9940255 to 0.328817 

fBodyGyro.mean.Z.avg

* Fast Fourier Transform Body Gyroscope Mean Z Direction
    + -0.9859578 to 0.4924144 

fBodyGyro.std.X.avg

* Fast Fourier Transform Body Gyroscope Standard Deviation X Direction
    + -0.9946522 to 0.1966133 

fBodyGyro.std.Y.avg

* Fast Fourier Transform Body Gyroscope Standard Deviation Y Direction
    + -0.9943531 to 0.6462336 

fBodyGyro.std.Z.avg

* Fast Fourier Transform Body Gyroscope Standard Deviation Z Direction
    + -0.9867253 to 0.5224542 

fBodyAccMag.mean.avg

* Fast Fourier Transform Body Acceleration Magnitude Mean
    + -0.9868006 to 0.5866376 

fBodyAccMag.std.avg

* Fast Fourier Transform Body Acceleration Magnitude Standard Deviation
    + -0.9876485 to 0.1786846 

fBodyBodyAccJerkMag.mean.avg

* Fast Fourier Transform Body Acceleration Jerk Magnitude Mean
    + -0.9939983 to 0.5384048 

fBodyBodyAccJerkMag.std.avg

* Fast Fourier Transform Body Acceleration Jerk Magnitude Standard Deviation
    + -0.9943667 to 0.3163464 

fBodyBodyGyroMag.mean.avg

* Fast Fourier Transform Body Squared Gyroscope Magnitude Mean
    + -0.9865352 to 0.2039798 

fBodyBodyGyroMag.std.avg

* Fast Fourier Transform Body Squared Gyroscope Magnitude Standard Deviation
    + -0.9814688 to 0.2366597 

fBodyBodyGyroJerkMag.mean.avg

* Fast Fourier Transform Body Squared Gyroscope Jerk Magnitude Mean
    + -0.9976174 to 0.1466186 

fBodyBodyGyroJerkMag.std.avg

* Fast Fourier Transform Body Squared Gyroscope Jerk Magnitude Standard Deviation
    + -0.9975852 to 0.2878346 
