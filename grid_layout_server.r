library(shiny)

shinyServer(function(input, output, session)
  {
  x <- reactive(
    {
     print(input$x) 
     req(input$x)  # ensure input is not NULL
     return(input$x)
      
    }
  )
  
  y <- reactive(
    {
      print(input$y)
      req(input$y)
      return(input$y)
    }
  )

  output$plot <- renderPlot(
     { 
       req(x())
       req(y())
       
       #subset the dataset
       data <- diamonds[sample(nrow(diamonds), input$sampleSize), ]
       
       #plot
       ggplot(data, aes_string(x = x(), y = y())) +
         geom_point() +
         labs(x = input$x, y = input$y)  # use the selected variables as axis labels
       })
  }
)