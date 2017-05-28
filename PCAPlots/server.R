#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

set.seed(101)
xx = matrix(rnorm(300), ncol=3)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  output$pcaPlot <- renderPlot({

    ww = c(input$w1, input$w2, input$w3)
    xx = t(ww * t(xx))
    pca = prcomp(xx)
    pp = predict(pca)

    plot(pp[,1], pp[,2], col = 'darkgray', border = 'white')

  })

  output
})
