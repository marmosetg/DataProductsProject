library(shiny)
# Define UI for application that plots random distributions 
shinyUI(pageWithSidebar(
    
    # Application title
    headerPanel("Normal Generator"),
    
    # Sidebar with a slider input for number of observations
    sidebarPanel(
        sliderInput("obs", 
                    "Number of observations:", 
                    min = 1,
                    max = 10000, 
                    value = 5000)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
        plotOutput("distPlot")
    )
))