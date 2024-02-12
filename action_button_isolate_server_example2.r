library(shiny)

library(datasets)

shinyServer(function(input, output)
  {
  # to print the heading in the main panel for structure of the data set
  output$dataname <- renderText(
    {
      paste("Structure of the dataset", input$dataset)  #dataset will be selected and will store in id = dataname
    }
  )
  # return the dataset structure. We have used the str() function to get the structure 
  output$structure <- renderPrint(
    {
      # str(datasetInput()) 
      str(get(input$dataset))
    }
  )
  # to print the heading in the main panel for observation of th dataset
  output$observation <- renderText(
        {
          input$act   #act is the input id of action button
          isolate(paste("First", input$obs, "observations of the dataset", input$dataset))
        }
  )
  output$view <- renderTable(
    {
      input$act
      isolate(head(get(input$dataset), n = input$obs))  #head function is used to get observations
    }
  )
})
