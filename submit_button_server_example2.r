library(shiny)
library(datasets)

shinyServer(function(input, output)
{   # to print the heading in the main panel for structure of the dataset. Dependency in the uodate button
  output$dataname <- renderText(
    {
      paste("Structure of the dataset", input$dataset)
    }
  )
  # to print the heading in the main panel for onservation of the dataset, 
  output$observation <- renderText(
    {
    paste("First", input$obs,"Observation of the dataset", input$dataset)
    }
  )
  # return the dataset structure . we have use str() function to get the structure of the dataset
  output$structure <- renderPrint(
    {
      str(get(input$dataset))
    }
  )
  # for dataset observations ="n" observations as defined by the user's input. 
  output$view <- renderTable(
    {
      head(get(input$dataset), n = input$obs)
    }
  )
})