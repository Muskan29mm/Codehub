library(shiny)
library(ggplot2)

shinyServer(function(input, output)
  (
    {  # this reactive function would return the column variable names corresponding to the dataset selected
      var <- reactive({
        switch(input$data1,
               "iris" = names(iris),
               "mtcars" = names(mtcars),
               "trees" = names(trees)
               )
      })
      output$vx <- renderUI(
        {
          selectInput("variablex", "Select the First (X) variable", choices = var())   # var is a variable created above and the output will stored in variable vx
        }
      )
      output$vy <- renderUI(
        {
          selectInput("variabley", "Select the Second (Y) variable", choices = var())
        }
      )
      
      #renderplot is used to plot the ggplot and the plot output willbe stored in the output variable p 
      output$p <- renderPlot(
        {
          attach(get(input$data1))
          plot(x= get(input$variablex), y=get(input$variabley), xlab=input$variablex, ylab=input$variabley)
        }
      )
    }
  ))