---
title: "readme"
output:
  html_document: default
  pdf_document: default
---
## Getting and Cleaning Data.

This project demonstrates the ability to synthesize data from large external sources and create clean outputs that are useable by end users. Specifically, data from fitness devices was used. 

In order to run this, please ensure that you are at the working directory set one level about the UCI HAR Dataset structure.

##run_analysis.R
As per the assignment instructions, the script performs the following high-level tasks:

Prepares the R dependencies and the working directories
Downloads and unzip the original dataset (if not already present)
Loads the features, keeps only the variable related to mean and std
Loads the subjects and activities. It merges them.
It merges features, subjects, and activities
Cleans the variable names to human readable form (and R coding standard compliant)
Creates the tiny data set with the average of each variable for each activity and each subject.

##CodeBook.md
As per the assignment instructions, the CodeBook 
contains a description of the original dataset, the data acquisition process, the data transformation process, the variables, and the tidy dataset format.