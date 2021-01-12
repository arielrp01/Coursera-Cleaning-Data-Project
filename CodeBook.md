## Coursera - Getting and Cleaning Data Course Project | CodeBook.md

## Data
These experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

UCI HAR Dataset | https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Project Summary | http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## run_analysis.R

1. Merge the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Output 

Upon execution of run_analysis.R, TidyData.txt is generated. 

## Variables

NOTE: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

"TimeBodyAccelerometer.Mean...X"                             
"TimeBodyAccelerometer.Mean...Y"                             
"TimeBodyAccelerometer.Mean...Z"                             
"TimeGravityAccelerometer.Mean...X"                          
"TimeGravityAccelerometer.Mean...Y"                          
"TimeGravityAccelerometer.Mean...Z"                          
"TimeBodyAccelerometerJerk.Mean...X"                         
"TimeBodyAccelerometerJerk.Mean...Y"                         
"TimeBodyAccelerometerJerk.Mean...Z"                         
"TimeBodyGyroscope.Mean...X"                                 
"TimeBodyGyroscope.Mean...Y"                                 
"TimeBodyGyroscope.Mean...Z"                                 
"TimeBodyGyroscopeJerk.Mean...X"                             
"TimeBodyGyroscopeJerk.Mean...Y"                             
"TimeBodyGyroscopeJerk.Mean...Z"                             
"TimeBodyAccelerometerMagnitude.Mean.."                      
"TimeGravityAccelerometerMagnitude.Mean.."                   
"TimeBodyAccelerometerJerkMagnitude.Mean.."                  
"TimeBodyGyroscopeMagnitude.Mean.."                          
"TimeBodyGyroscopeJerkMagnitude.Mean.."                      
"FrequencyBodyAccelerometer.Mean...X"                       
"FrequencyBodyAccelerometer.Mean...Y"                        
"FrequencyBodyAccelerometer.Mean...Z"                        
"FrequencyBodyAccelerometer.MeanFreq...X"                    
"FrequencyBodyAccelerometer.MeanFreq...Y"                    
"FrequencyBodyAccelerometer.MeanFreq...Z"                    
"FrequencyBodyAccelerometerJerk.Mean...X"                    
"FrequencyBodyAccelerometerJerk.Mean...Y"                    
"FrequencyBodyAccelerometerJerk.Mean...Z"                    
"FrequencyBodyAccelerometerJerk.MeanFreq...X"                
"FrequencyBodyAccelerometerJerk.MeanFreq...Y"                
"FrequencyBodyAccelerometerJerk.MeanFreq...Z"                
"FrequencyBodyGyroscope.Mean...X"                            
"FrequencyBodyGyroscope.Mean...Y"                            
"FrequencyBodyGyroscope.Mean...Z"                            
"FrequencyBodyGyroscope.MeanFreq...X"                        
"FrequencyBodyGyroscope.MeanFreq...Y"                        
"FrequencyBodyGyroscope.MeanFreq...Z"                        
"FrequencyBodyAccelerometerMagnitude.Mean.."                 
"FrequencyBodyAccelerometerMagnitude.MeanFreq.."             
"FrequencyBodyAccelerometerJerkMagnitude.Mean.."             
"FrequencyBodyAccelerometerJerkMagnitude.MeanFreq.."         
"FrequencyBodyGyroscopeMagnitude.Mean.."                     
"FrequencyBodyGyroscopeMagnitude.MeanFreq.."                 
"FrequencyBodyGyroscopeJerkMagnitude.Mean.."                 
"FrequencyBodyGyroscopeJerkMagnitude.MeanFreq.."             
"Angle.TimeBodyAccelerometerMean.Gravity."                   
"Angle.TimeBodyAccelerometerJerkMean..GravityMean."          
"Angle.TimeBodyGyroscopeMean.GravityMean."                   
"Angle.TimeBodyGyroscopeJerkMean.GravityMean."               
"Angle.X.GravityMean."                                       
"Angle.Y.GravityMean."                                       
"Angle.Z.GravityMean."                                       
"TimeBodyAccelerometer.StandardDeviation...X"                
"TimeBodyAccelerometer.StandardDeviation...Y"                
"TimeBodyAccelerometer.StandardDeviation...Z"                
"TimeGravityAccelerometer.StandardDeviation...X"             
"TimeGravityAccelerometer.StandardDeviation...Y"             
"TimeGravityAccelerometer.StandardDeviation...Z"             
"TimeBodyAccelerometerJerk.StandardDeviation...X"            
"TimeBodyAccelerometerJerk.StandardDeviation...Y"            
"TimeBodyAccelerometerJerk.StandardDeviation...Z"            
"TimeBodyGyroscope.StandardDeviation...X"                    
"TimeBodyGyroscope.StandardDeviation...Y"                    
"TimeBodyGyroscope.StandardDeviation...Z"                    
"TimeBodyGyroscopeJerk.StandardDeviation...X"                
"TimeBodyGyroscopeJerk.StandardDeviation...Y"                
"TimeBodyGyroscopeJerk.StandardDeviation...Z"                
"TimeBodyAccelerometerMagnitude.StandardDeviation.."         
"TimeGravityAccelerometerMagnitude.StandardDeviation.."      
"TimeBodyAccelerometerJerkMagnitude.StandardDeviation.."     
"TimeBodyGyroscopeMagnitude.StandardDeviation.."             
"TimeBodyGyroscopeJerkMagnitude.StandardDeviation.."         
"FrequencyBodyAccelerometer.StandardDeviation...X"           
"FrequencyBodyAccelerometer.StandardDeviation...Y"           
"FrequencyBodyAccelerometer.StandardDeviation...Z"           
"FrequencyBodyAccelerometerJerk.StandardDeviation...X"       
"FrequencyBodyAccelerometerJerk.StandardDeviation...Y"       
"FrequencyBodyAccelerometerJerk.StandardDeviation...Z"       
"FrequencyBodyGyroscope.StandardDeviation...X"               
"FrequencyBodyGyroscope.StandardDeviation...Y"               
"FrequencyBodyGyroscope.StandardDeviation...Z"               
"FrequencyBodyAccelerometerMagnitude.StandardDeviation.."    
"FrequencyBodyAccelerometerJerkMagnitude.StandardDeviation.."
"FrequencyBodyGyroscopeMagnitude.StandardDeviation.."        
"FrequencyBodyGyroscopeJerkMagnitude.StandardDeviation.." 

## Variable Name Modifications

The following variable name modifications have been made:

- f        =  Frequency
- t        =  Time
- std      =  StandardDeviation
- mean     =  Mean
- tbody    =  TimeBody
- Acc   	 =  Accelerometer
- BodyBody =  Body
- Gyro     =  Gyroscope
- Mag      =  Magnitude
- angle    =  Angle
- gravity  =  Gravity

## Activity Labels

Descriptions of the subject's actions while in the test environment. See also activity_labels.txt in the UCI HAR Dataset.

- WALKING (code 1): Subject walking 
- WALKING_UPSTAIRS (code 2): Subject walking upstairs
- WALKING_DOWNSTAIRS (code 3): Subject walking downstairs
- SITTING (code 4): Subject sitting
- STANDING (code 5): Subject standing 
- LAYING (code 6): Subject laying down

## Additional Information

Additional information can be found in the features_info.txt and README.txt in the UCI HAR Dataset.
