library(shiny)
data(iris) #load the dataset

shinyServer(
  function(input, output)
  {
    
    colm <- reactive(
      {
        as.numeric(input$var)
      }
    )
    output$text1 <- renderText(
      {
       # colm = as.numeric(input$var)
        paste("Dataset variable/column name is", names(iris[colm()]))   # calling reactive function
      }
    )
    
    output$text2 <- renderText(
      {
        paste("Color of histogram is", input$radio)
      }
    )
    
    output$text3 <- renderText(
      {
        paste("Number of histogram BIN's is", input$bin)
      }
    )
    output$myhist <-renderPlot(
      {
        # colm = as.numeric(input$var)
        hist(iris[,colm()], xlim = c(0, max(iris[,colm()])), main="Histogram of iris dataset", breaks=seq(0, max(iris[,colm()]),l=input$bins+1), col=input$color, xlab=names(iris[colm()]))
      }
    )
  }
)