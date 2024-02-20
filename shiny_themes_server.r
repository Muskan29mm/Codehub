library(shiny)

shinyServer(
  function(input, output, session)
  {
    output$table <- renderTable({
      # Load the selected dataset
      data <- switch(input$dataset,
                     "mtcars dataset" = mtcars,
                     "iris dataset" = iris)
      # Return the dataset
      data
      
    })
  
  output$summary <- renderPrint({
    # Create summary statistics of the selected dataset
    summary <- summary(switch(input$dataset,
                              "mtcars dataset" = mtcars,
                              "iris dataset" = iris))
    # Return the summary statistics
    summary
  })
  
  #slider input
  output$rows <- renderText({
    # return selected number of data rows
    paste("You selected the value: ",input$n)
  }
  )

  output$txt1 <- renderText({
    input$button
    isolate(paste("Number of Data Rows selected are: ", input$data, input$n))
  })
  
  output$plot <- renderPlot({
    # Create a simple scatter plot based on the selected dataset
    data <- switch(input$dataset,
                   "mtcars dataset" = mtcars,
                   "iris dataset" = iris)
    plot(data$mpg, data$wt, 
         xlab = "Miles per Gallon", ylab = "Weight",
         main = "Scatter Plot of MPG vs. Weight")
  })
  })

