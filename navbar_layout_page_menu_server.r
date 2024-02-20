library(shiny)

shinyServer(function(input, output, session)
  {
  # for display of matcars dataset in the Data page
  output$data <- renderTable(
    {
      mtcars
    }
  )
  
  # for display of histogram in the widget & sidebar page
  output$plot <- renderPlot(
    {
      hist(mtcars$mpg, col = "blue", breaks=input$b)
    }
  )
  
  # for display of mtcars dataset summary statisc=tics in the "menu item A page"
  output$summary <- renderPrint(
    {
      summary(mtcars)
    }
  )
  
})