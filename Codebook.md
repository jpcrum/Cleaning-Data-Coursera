# Code Book

This code book summarizes the resulting data fields in `tidy_data.txt`.

## Dataset Description

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


## Subject/Activity Identifiers

* `subject` - integer - The ID of the experiment subject
* `activity` - character - The type of activity that was being performed while wearning the smartphone

## Measurements

* `Time_Body_Accelerometer_Mean()_X`                               
* `Time_Body_Accelerometer_Mean()_Y`                               
* `Time_Body_Accelerometer_Mean()_Z`                               
* `Time_Body_Accelerometer_STD()_X`                                
* `Time_Body_Accelerometer_STD()_Y`                                
* `Time_Body_Accelerometer_STD()_Z`                                
* `Time_Gravity_Accelerometer_Mean()_X`                            
* `Time_Gravity_Accelerometer_Mean()_Y`                            
* `Time_Gravity_Accelerometer_Mean()_Z`                            
* `Time_Gravity_Accelerometer_STD()_X`                             
* `Time_Gravity_Accelerometer_STD()_Y`                             
* `Time_Gravity_Accelerometer_STD()_Z`                            
* `Time_Body_Accelerometer_Jerk_Mean()_X`                          
* `Time_Body_Accelerometer_Jerk_Mean()_Y`                          
* `Time_Body_Accelerometer_Jerk_Mean()_Z`                          
* `Time_Body_Accelerometer_Jerk_STD()_X`                           
* `Time_Body_Accelerometer_Jerk_STD()_Y`                           
* `Time_Body_Accelerometer_Jerk_STD()_Z`                           
* `Time_Body_Gyroscope_Mean()_X`                                   
* `Time_Body_Gyroscope_Mean()_Y`                                   
* `Time_Body_Gyroscope_Mean()_Z`                                   
* `Time_Body_Gyroscope_STD()_X`                                   
* `Time_Body_Gyroscope_STD()_Y`                                    
* `Time_Body_Gyroscope_STD()_Z`                                    
* `Time_Body_Gyroscope_Jerk_Mean()_X`                              
* `Time_Body_Gyroscope_Jerk_Mean()_Y`                              
* `Time_Body_Gyroscope_Jerk_Mean()_Z`                              
* `Time_Body_Gyroscope_Jerk_STD()_X`                               
* `Time_Body_Gyroscope_Jerk_STD()_Y`                               
* `Time_Body_Gyroscope_Jerk_STD()_Z`                               
* `Time_Body_Accelerometer_Magnitude_Mean()`                       
* `Time_Body_Accelerometer_Magnitude_STD()`                        
* `Time_Gravity_Accelerometer_Magnitude_Mean()`                    
* `Time_Gravity_Accelerometer_Magnitude_STD()`                     
* `Time_Body_Accelerometer_Jerk_Magnitude_Mean()`                 
* `Time_Body_Accelerometer_Jerk_Magnitude_STD()`                   
* `Time_Body_Gyroscope_Magnitude_Mean()`                           
* `Time_Body_Gyroscope_Magnitude_STD()`                            
* `Time_Body_Gyroscope_Jerk_Magnitude_Mean()`                      
* `Time_Body_Gyroscope_Jerk_Magnitude_STD()`                       
* `Frequency_Body_Accelerometer_Mean()_X`                         
* `Frequency_Body_Accelerometer_Mean()_Y`                          
* `Frequency_Body_Accelerometer_Mean()_Z`                          
* `Frequency_Body_Accelerometer_STD()_X`                           
* `Frequency_Body_Accelerometer_STD()_Y`                           
* `Frequency_Body_Accelerometer_STD()_Z`                           
* `Frequency_Body_Accelerometer_MeanFrequency()_X`                 
* `Frequency_Body_Accelerometer_MeanFrequency()_Y`                 
* `Frequency_Body_Accelerometer_MeanFrequency()_Z`                 
* `Frequency_Body_Accelerometer_Jerk_Mean()_X`                     
* `Frequency_Body_Accelerometer_Jerk_Mean()_Y`                    
* `Frequency_Body_Accelerometer_Jerk_Mean()_Z`                     
* `Frequency_Body_Accelerometer_Jerk_STD()_X`                      
* `Frequency_Body_Accelerometer_Jerk_STD()_Y`                      
* `Frequency_Body_Accelerometer_Jerk_STD()_Z`                      
* `Frequency_Body_Accelerometer_Jerk_MeanFrequency()_X`            
* `Frequency_Body_Accelerometer_Jerk_MeanFrequency()_Y`            
* `Frequency_Body_Accelerometer_Jerk_MeanFrequency()_Z`            
* `Frequency_Body_Gyroscope_Mean()_X`                              
* `Frequency_Body_Gyroscope_Mean()_Y`                              
* `Frequency_Body_Gyroscope_Mean()_Z`                              
* `Frequency_Body_Gyroscope_STD()_X`                               
* `Frequency_Body_Gyroscope_STD()_Y`                               
* `Frequency_Body_Gyroscope_STD()_Z`                               
* `Frequency_Body_Gyroscope_MeanFrequency()_X`                     
* `Frequency_Body_Gyroscope_MeanFrequency()_Y`                     
* `Frequency_Body_Gyroscope_MeanFrequency()_Z`                     
* `Frequency_Body_Accelerometer_Magnitude_Mean()`                  
* `Frequency_Body_Accelerometer_Magnitude_STD()`                   
* `Frequency_Body_Accelerometer_Magnitude_MeanFrequency()`         
* `Frequency_BodyBody_Accelerometer_Jerk_Magnitude_Mean()`         
* `Frequency_BodyBody_Accelerometer_Jerk_Magnitude_STD()`          
* `Frequency_BodyBody_Accelerometer_Jerk_Magnitude_MeanFrequency()`
* `Frequency_BodyBody_Gyroscope_Magnitude_Mean()`                  
* `Frequency_BodyBody_Gyroscope_Magnitude_STD()`                   
* `Frequency_BodyBody_Gyroscope_Magnitude_MeanFrequency()`         
* `Frequency_BodyBody_Gyroscope_Jerk_Magnitude_Mean()`             
* `Frequency_BodyBody_Gyroscope_Jerk_Magnitude_STD()`             
* `Frequency_BodyBody_Gyroscope_Jerk_Magnitude_MeanFrequency()`

## Activity Labels

* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test
