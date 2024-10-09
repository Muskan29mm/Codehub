library(shiny)
library(ggplot2)

server <- function(input, output, session) {
  
  # Scatter plot the mtcars dataset
  output$graph <- renderPlot({
    ggplot(data = mtcars, aes(x = mpg, y = hp)) + 
      geom_point()
  })
  
  # Display the mtcars dataset in a table
  output$data <- renderTable({
    mtcars
  })
  
  # Render brushed data and check if there are any selected points
  output$data_brush <- renderTable({
    brushed_data <- brushedPoints(mtcars, brush = input$plot_brush, allRows = TRUE)
    if (nrow(brushed_data) == 0) {
      return(NULL)  # Return NULL if no points are brushed
    } else {
      return(brushed_data)  # Return the brushed data
    }
  })
  
  # Check if brushed data is available
  output$brushedDataAvailable <- reactive({
    nrow(brushedPoints(mtcars, brush = input$plot_brush)) > 0
  })
  outputOptions(output, "brushedDataAvailable", suspendWhenHidden = FALSE)
}
