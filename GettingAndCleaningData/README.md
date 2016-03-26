Introduction
============

This repository contains a script that works with the Human Activity Recognition Using Smartphones Dataset. More information about the dataset and what was done with it can be seen below.

Human Activity Recognition Using Smartphones Dataset
====================================================

The Human Activity Recognition Using Smartphones Dataset Version 1.0 was produced by Smartlab - Non Linear Complex Systems Laboratory, DITEN - Università degli Studi di Genova. More information about the dataset and its authors can be found at www.smartlab.ws.

The following is an excerpt of the data description:
>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The above describes the final dataset produced by the Smartlab team. The script takes a subset of the time and frequency domain variables produced, specifically the mean and standard deviation for the features, and computes the average of each variable for each activity and each person. See 'CodeBook.md' for more details on the feature variables. 

Repository Contents
===================

The repository includes the following files:
- 'README.md'
- 'run_analysis.R': Script which consumes the Human Activity Recognition Using Smartphones Dataset to produce a summarised subset of the original dataset.
- 'CodeBook.md': Shows information about the variables in the dataset produced by 'run_analysis.R'.
