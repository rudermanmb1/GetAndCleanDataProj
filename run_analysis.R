##run analysis starts here
## first step is to open the files with the data

filePathTrain <- paste(getwd(), "train", sep = "/")
filePathTest <- paste(getwd(), "test", sep = "/")

features <- read.table("features.txt", header = F)
activityLabels <- read.table("activity_labels.txt", header = F)


TrainX <- read.table(paste(filePathTrain, "X_train.txt", sep = "/"), header = F)
TestX <- read.table(paste(filePathTest, "X_test.txt", sep = "/"), header = F)

TrainY <- read.table(paste(filePathTrain, "y_train.txt", sep = "/"), header = F)
TestY <- read.table(paste(filePathTest, "y_test.txt", sep = "/"), header = F)

TrainSubject <- read.table(paste(filePathTrain, "subject_train.txt", sep = "/"), header = F)
TestSubject <- read.table(paste(filePathTest, "subject_test.txt", sep = "/"), header = F)

##next begin manipulating tables to merge them into a tidy data set

# use the features table to give labels to the TestX table columns
# and TrainX table columns separately
colnames(TrainX) <- as.character(features$V2)
colnames(TestX) <- as.character(features$V2)


# change the column name to "Subject_no." for the TrainSubject column and 
# TestSubject column
colnames(TrainSubject) <- "Subject_no."
colnames(TestSubject) <- "Subject_no."

# change the TrainY and TestY column name to "activity no."
colnames(TrainY) <- "Activity_no."
colnames(TestY) <- "Activity_no."

# add the TraintSubject and TrainY tables to the TrainX table as a new column, and
# do the same to the TestSubject, TestY and TestX table
TrainX <- cbind(TrainSubject, TrainY, TrainX) 
TestX <- cbind(TestSubject, TestY, TestX)

# add the rows of TrainX and TestX to form a single table
TablePrime <- rbind(TrainX, TestX)

# extract the columns that take the mean and Standard deviation
# of the various measurements

TidyData <-TablePrime[,c(1:8, 43:48, 83:88, 123:128, 163:168, 203, 204, 216, 217, 229, 
                         230, 242, 243, 255, 256, 268:273, 296:298, 347:352, 375:377, 
                         426:431, 454:456, 505, 506, 518, 519, 528, 531, 532, 541, 544, 
                         545, 554, 557:563)]
## finally the new data table is written into a file

write.table(TidyData,"TidyData.txt", sep = " ", row.name = F)