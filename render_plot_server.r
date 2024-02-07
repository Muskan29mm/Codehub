library(shiny)

shinyServer(
  function(input,output)
  {
    output$myhist <-renderPlot({
        colm <- as.numeric(input$var)  #here we are converting 'var' variable to numeric
        hist(iris[,colm], breaks=seq(0, max(iris[,colm]), l=input$bins+1), col=input$color, main="Histogram of iris Datset", xlab=names(iris[colm]))
      })
  }
)