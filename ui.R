#

library(shiny)

# Defining the UI 
shinyUI(fluidPage(

    # Giving the page a title
    titlePanel ("MPG vs Number of Cylinders, Weight and Transmission"),
    
    # Generating a row with a sidebar
    sidebarLayout(      
        
        # Defining the sidebar with two input
        sidebarPanel(
            selectInput("am", "Select a Transmission (0 = automatic, 1 = manual):", 
                        choices=c(0,1)  ),
            
            sliderInput("wtval","Enter Vehicle Weight in (lb/1000)",2.0,5.5,3.0),
            hr(),
            helpText("Data from Mtcars Dataset.")
        ),
        
        # Creating a spot for the plots and text outputs
        mainPanel(
            plotOutput("mpgPlot"),
            plotOutput("mpgPlot2"),
            h3("Predicted MPG based on selected Weight:"),
            textOutput("predict")
        )
        
    )
))
