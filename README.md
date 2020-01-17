# DDP_Assignment

This project is the last assignment for Coursera Developing Data Products class. The purpose of the project is to write a shiny app that can help predict car miles per Gallon (MPG) based on weight and transmission.


## App Features

1. By selecting the car transmission type (automatic or manual) in the drop down menu in the side panel the app displays a boxplot showing the distribution of MPG for 4,6, and 8 cylinder cars.
2. In addition a scater plot wich displays the value of MPG for each weight andregression line is also provided.
3. After selecting the transmission in the dropdown menu and the car weight in the slider, the predicted MPG is displaid based on the linear regression model.

## Prerequisites
The app uses the mtcars dataset
The following packages are loaded when running the app on local computer and should be already installed:
shiny
datasets
dplyr
