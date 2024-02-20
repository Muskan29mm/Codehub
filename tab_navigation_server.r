library(shiny)

shinyServer(function(input, output, session)
  {
  output$table1 <- renderTable(
    {
      mtcars
    })
  output$summary1 <- renderText(
  {
    summary(mtcars)
  })
  output$scatterplot <- renderPlot(
    {
      plot(mtcars$wt, mtcars$mpg,
           xlab = "Weight", ylab = "Miles per Gallon",
           main = "Scatter plot of weight vs. MPG")
    }
  )
  output$plot <- renderPlot(
    {
      hist(mtcars$mpg, breaks = input$n)
    }
  )
}
)
            
  