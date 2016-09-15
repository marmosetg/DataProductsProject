The Pitch (fun w/rnorm)
===
transition: rotate
author: Scott Posey
date: 09/14/2016

Application Description
===

This is a simple application to demonstrate the use of shiny.

+ Input: Number of Observations (via slider widget) 
+ Output: Histogram of the rnormal distribution

(if that's not fun, I don't know what is)

Client Code (ui.R)
===

```r
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
```

<!--html_preserve--><div class="container-fluid">
<div class="row">
<div class="col-sm-12">
<h1>Normal Generator</h1>
</div>
</div>
<div class="row">
<div class="col-sm-4">
<form class="well">
<div class="form-group shiny-input-container">
<label class="control-label" for="obs">Number of observations:</label>
<input class="js-range-slider" id="obs" data-min="1" data-max="10000" data-from="5000" data-step="1" data-grid="true" data-grid-num="9.999" data-grid-snap="false" data-prettify-separator="," data-keyboard="true" data-keyboard-step="0.01000100010001" data-drag-interval="true" data-data-type="number"/>
</div>
</form>
</div>
<div class="col-sm-8">
<div id="distPlot" class="shiny-plot-output" style="width: 100% ; height: 400px"></div>
</div>
</div>
</div><!--/html_preserve-->

Server Code (server.R)
===


```r
library(shiny)
# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {   
    # Expression that generates a plot of the distribution. 
    #
    #  1) automatically re-executed when inputs change
    #  2) Its output type is a plot 
    #
    output$distPlot <- renderPlot({
        # generate an rnorm distribution and plot it
        dist <- rnorm(input$obs)
        hist(dist)
    })
})
```

Shiny App
===
Link to application on Shinyapps website

https://marmoset.shinyapps.io/DataProductsProject/
