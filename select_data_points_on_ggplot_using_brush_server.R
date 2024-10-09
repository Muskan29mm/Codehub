library(shiny)
library(shinydashboard)
library(ggplot2)

server <- function(input, output, session)
{
  # scatter plot the mtcars dataset - mpg vs hp
  output$graph <- renderPlot({
    ggplot(data = mtcars, aes(x = mpg, y = hp)) +
      geom_point()
  })
  # To display the mtcars dataset on the left side in the app
  output$data <- renderTable({
    mtcars
  })
  
  output$data_brush <- renderTable({
    n = nrow(brushedPoints(mtcars, brush = input$plot_brush))  # rowcount will be 0 if no data selected
    if(n==0)
      return()
    else
      brushedPoints(mtcars, brush = input$plot_brush)  # return rows
  })
}

