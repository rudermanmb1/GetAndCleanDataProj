##TidyData Code book
##This Code book explains the variables for the dataset "TidyData"

###Symbol key
	*the symbol (STAT) is used to refer to a place in a variable name where mean (mean()) standard deviation (std()) is present in the variable name on the table
	*the symbol (Dir) is used to refer to a place in a variable name where the X, Y, and Z direction is present in the variable name on the table

###Measurement Key
	*The variables come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
	These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using 
	a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the 
	acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another 
	low pass Butterworth filter with a corner frequency of 0.3 Hz. 
	*Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ 
	and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
	(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
	*Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, 
	fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate 
	frequency domain signals).
	*mean(): mean value
	*std(): Standard deviation
	*angle(): Angle between two vectors
	*meanFreq(): Weighted average of the frequency components to obtain a mean frequency

##Variables
###1. 2 "Subject_no."
	###The subject observed for the activity denoted by numbers 1-30


###2. 2 "Activity_no."
	###The number representing the activity performed during the observation on the table
	1. Walking 
	2. WALKING_UPSTAIRS
	3. WALKING_DOWNSTAIRS
	4. SITTING
	5. STANDING
	6. LAYING

###3. 3-32 "tBodyAcc-(STAT)-(Dir), tGravityAcc-(STAT)-(Dir), tBodyAccJerk-(STAT)-(Dir), tBodyGyro-(STAT)-(Dir), tBodyGyroJerk-(STAT)-(Dir)"
	###Variables 3 - 32 are the means and stand deviations of the following measurements in the X, Y, and Z directions
	### sorted by the measurement; the mean or standard deviation; and the direction
		*tBodyAcc
		*tGravityAcc
		*tBodyAccJerk
		*tBodyGyro
		*tBodyGyroJerk

###4. 33-42 "tBodyAccMag-(STAT), tGravityAccMag-(STAT), tBodyAccJerkMag-(STAT), tBodyGyroMag-(STAT), tBodyGyroJerkMag-(STAT)"
	###Variables 33-42 are the means and standard deviations of the following measurements 
	### sorted in order of the measurement and the mean or standard deviation
		*tBodyAccMag
		*tGravityAccMag
		*tBodyAccJerkMag
		*tBodyGyroMag
		*tBodyGyroJerkMag

###5. 43-48 "fBodyAcc-(STAT)-(Dir)"
	###Variables 43-48 are the mean and standard deviation of the fBodyAcc measurement in the X, Y, and Z directions         	

###6. 48-51 "fBodyAcc-meanFreq()"
	###Variables 49-51 are the fBodyAcc-meanFreq() in the X, Y, and Z directions

###7. 52-57 "fBodyAccJerk-(STAT)-(Dir)"
	###Variables 52-57 are the mean and standard deviation of the fBodyAccJerk measurement in the X, Y, and Z directions

###8. 58-60 "fBodyAccJerk-meanFreq()-(Dir)"
	###Variables 58-60 are the fBodyAccJerk-meanFreq() measurements in the X, Y, and Z directions

###9. 61-66 "fBodyGyro-(STAT)-(Dir)"
	###Variables 61-66 are the mean and standard deviation of the fBodyGyro measurements in the X, Y, and Z directions

###10. 67-69 "fBodyGyro-meanFreq()-(Dir)"
	###Variables 67-69 are the fBodyGyro-meanFreq() measurements in the X, Y, and Z directions

###11. 70-71 "fBodyAccMag-(STAT)"
	###Variables 70-71 are the mean and standard deviation of the fBodyAccMag measurement

###12. 72-73 "fBodyBodyAccJerkMag-(STAT)"
	###Variables 72-73 are the mean and standard deviation of the fBodyBodyAccJerkMag measurement

###13. 74 "fBodyBodyAccJerkMag-meanFreq()"
	###Variables 74 is the fBodyBodyAccJerkMag-meanFreq() measurement

###14. 75-76 "fBodyBodyGyroMag-(STAT)"
	###Variables 75-76 are the mean and standard deviation of the fBodyBodyGyroMag measurement

###15. 77 "fBodyBodyGyroMag-meanFreq()"
	###Variable 77 is the fBodyBodyGyroMag-meanFreq() measurement

###16. 78-79 "fBodyBodyGyroJerkMag-(STAT)"
	###Variables 78-79 are the mean and standard deviation of the fBodyBodyGyroJerkMag measurement

###17. 80 "fBodyBodyGyroJerkMag-meanFreq()"
	###Variable 80 is the fBodyBodyGyroJerkMag-meanFreq() measurement

###18. 81 "angle(tBodyAccMean,gravity)"
	###Variable 81 is the angle(tBodyAccMean,gravity) measurement

###19. 82 "angle(tBodyAccJerkMean),gravityMean)"
	###Variable 82 is the angle(tBodyAccJerkMean),gravityMean) measurement

###20. 83 "angle(tBodyGyroMean,gravityMean)"
	###Variable 83 is the angle(tBodyGyroMean,gravityMean), measurement

###21. 84 "angle(tBodyGyroJerkMean,gravityMean)"
	###Variable 84 is the angle(tBodyGyroJerkMean,gravityMean) measurement

###22. 85-87 "angle((DIR), gravityMean)"
	###Variables 85-87 are the angle((DIR), gravityMean) measurements for the X, Y, and Z directions
