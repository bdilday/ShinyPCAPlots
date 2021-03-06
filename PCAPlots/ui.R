#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Old Faithful Geyser Data"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(

     sidebarPanel(

       sliderInput("w1",
                   "weight1:",
                   min = 1,
                   max = 50,
                   value = 10),

       sliderInput("w2",
                   "weight2:",
                   min = 1,
                   max = 50,
                   value = 10),

       sliderInput("w3",
                   "weight3:",
                   min = 1,
                   max = 50,
                   value = 10)
    ),

    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("pcaPlot")
    )
  )
))
