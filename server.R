# This app relies on the 'mtcars' dataset in the datasets
# packages needed.
library(datasets)
library(dplyr)
mtcars1<-mtcars

# Defining a server for the Shiny app
function(input, output) {
    
    # Filling in the spot we created for the plots
    output$mpgPlot <- renderPlot({
        
        # Render a plot
        mtcars1<-mtcars
        mtcars1<-filter(mtcars1, am==input$am)
        boxplot(mpg~cyl, data = mtcars1, col="blue",
                main="Miles per Gallon vs Number of Cylinders",
                ylab="Miles per Gallon",
                xlab="Number of Cylinders")
        
        
    })
    output$mpgPlot2 <- renderPlot({
        mtcars1<-mtcars
        mtcars1<-filter(mtcars1, am==input$am)
        model1<-lm(mpg~wt,data = mtcars1)
        plot(mtcars1$wt, mtcars1$mpg, main = "Miles per Gallon vs Weight",
             xlab = "Weght (lb/1000)", ylab = "Miles per Gallon", pch=16)
        abline(model1)
        
        
    })
    # Filling in the spot we created for the text
        output$predict<-renderText({
            mtcars1<-mtcars
        mtcars1<-filter(mtcars1, am==input$am)
        model1<-lm(mpg~wt,data = mtcars1)
                predict(model1, newdata = data.frame (wt=input$wtval ))
        
    })
}