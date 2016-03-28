# This function extracts the factor labels for Activity Labels and Feature Names
getFactorLabels <- function(fileName){
    lines <- readLines(fileName)
    splitLines <- strsplit(lines, " ")
    vectorLength <- length(splitLines)
    retVec <- vector("character", vectorLength)
    for(x in 1:vectorLength){
        retVec[x] <- splitLines[[x]][2]
    }
    retVec
}

# This function converts a vector (of numbers) into a factor
convertToFactor <- function(data, factorList){
    dataLength <- length(data)
    retVal <- vector(class(factorList), dataLength)
    for(x in 1:dataLength){
        retVal[x] <- factorList[as.integer(data[x])]
    }
    factor(retVal,factorList)
}

# This function creates a data frame with the interesting features in the data
createFeatureFrame <- function(fileName, featureFactors){
    # obtain interesting feature column ids and associated names
    interestingFeatureIds <- grep("mean\\(\\)|std\\(\\)", featureFactors)
    interestFeatureNames <- featureFactors[interestingFeatureIds]
    interestFeatureNames <- gsub("BodyBody","Body",interestFeatureNames)
    
    # populate features data from file
    lines <- readLines(fileName)
    splitLines <- strsplit(lines, " ")
    vectorLength <- length(splitLines)
    for(x in 1:vectorLength){
        # extract interesting features from each row
        lineWithHoles <- splitLines[[x]]
        lineWithoutHoles <- lineWithHoles[lineWithHoles != ""]
        interestValues <- as.numeric(lineWithoutHoles[interestingFeatureIds])
        
        # store interesting features in list for now
        splitLines[[x]] <- interestValues
    }
    
    # convert list to data frame with appropriate column names
    resDataFrame <- data.frame(splitLines)
    resDataFrame <- as.data.frame(t(resDataFrame)) # transpose data frame to get proper feature columns (due to list/data frame relationship)
    names(resDataFrame) <- interestFeatureNames
    resDataFrame
}

# This function creates a vector for the activity data
createActivityVector <- function(fileName, activityLabels){
    lines <- readLines(fileName)
    activityData <- as.integer(lines)
    convertToFactor(activityData, activityLabels)
}

# This function creates the 'interest' dataset from either training or test data files
getDataSet <- function(directory, dataId){
    mainDirectory <- paste0(directory, dataId,"/")
    subjectFileName <- paste0(mainDirectory,"subject_",dataId,".txt")
    featuresFileName <- paste0(mainDirectory,"X_",dataId,".txt")
    activityFileName <- paste0(mainDirectory,"y_",dataId,".txt")
    
    # create Subject column from file
    lines <- readLines(subjectFileName)
    subjectData <- as.integer(lines)
    
    # create features data frame from file
    featureFactors <- getFactorLabels(paste0(directory,"features.txt"))
    featureDataFrame <- createFeatureFrame(featuresFileName, featureFactors)
    
    # create Activity column from file
    activityLabels <- getFactorLabels(paste0(directory,"activity_labels.txt"))
    activityVec <- createActivityVector(activityFileName,activityLabels)
    
    # create result data frame
    cbind(subject = subjectData, activity = activityVec,featureDataFrame)
}

# This function calcuates the average of each variable
# for each activity and each subject. The resulting 3-dimensional data
# is transformed into 2-D by flattening along subject-activity pairs
getAverages <- function(datasetDirectory, fullDataSet){
    # get list of all activities
    activityLabels <- getFactorLabels(paste0(datasetDirectory,"activity_labels.txt"))
    activityCount <- length(activityLabels)
    
    # get list of all subjects
    allSubjects <- as.integer(levels(as.factor(fullDataSet$subject)))
    subjectCount <- length(allSubjects)
    
    # get total elements in an activity-subject table (length of flattened table vector)
    flattenedTableVectorLength <- subjectCount*activityCount
    
    resList <- list()
    featuresRange <- 3:length(fullDataSet)
    for(x in featuresRange){
        # calcuate average of each variable for each activity and each subject
        grid <- tapply(fullDataSet[,x], list(fullDataSet$subject, fullDataSet$activity), mean)
        
        # flatten each variable's subject-activity grid into a vector
        resVec <- vector("numeric", flattenedTableVectorLength)
        for(y in allSubjects){
            for(z in seq(along=activityLabels)){
                resVec[activityCount*(y-1)+z ] <- grid[y,z]
            }
        }
        
        # add vector to list as part of dataset of interesting features
        resList <- c(resList, list(resVec))
    }
    
    # create subject and activity columns
    subjectCol <- vector("integer", flattenedTableVectorLength)
    activityCol <- vector("character", flattenedTableVectorLength)
    for(y in allSubjects){
        for(z in seq(along=activityLabels)){
            subjectCol[activityCount*(y-1)+z ] <- y
            activityCol[activityCount*(y-1)+z ] <- activityLabels[z]
        }
    }
    
    # create column names (each name is the variable for which means were determined)
    colNames <- names(fullDataSet)[featuresRange]
    
    # convert list to data frame with appropriate row and column names
    resDataFrame <- data.frame(resList)
    names(resDataFrame) <- colNames
    cbind(subjectId = subjectCol, activity = activityCol, resDataFrame)
}

### Main execution ###
testDataId <- "test"
trainDataId <- "train"
datasetDirectory <- "UCI HAR Dataset/"

# Create dataset (using training and test data) with only the measurements 
# for the mean and standard deviation of each feature. 
# Descriptive activity names and variable names are used.
testDataSet <- getDataSet(datasetDirectory, testDataId)
trainDataSet <- getDataSet(datasetDirectory, trainDataId)
fullDataSet <- rbind(testDataSet, trainDataSet)

# Create data set with the average of each variable 
# for each activity and each subject.
finalDataSet <- getAverages(datasetDirectory, fullDataSet)
write.table(finalDataSet,"dataset.txt", row.names = FALSE)