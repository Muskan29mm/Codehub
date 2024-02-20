library(shiny)

shinyServer(function(input, output)
  {
  a=sample(1:20, replace=TRUE)
  b=sample(1:20, replace=TRUE)
  c=a+b
  df = data.frame(a=a, b=b, c=c)
  
  datavalues <- reactiveValues(data=df)
  
  
  # this will display data in a excel like editable cells
  # display the data using renderRhandsontable() function
  output$table <- renderRHandsontable(
    {
      rhandsontable(datavalues$data)
    }
  )
  
  # watching any changes made to table cells in column variables a or b then update
  observeEvent(
    input$table$changes$changes,
    {
      xi=input$table$changes$changes[[1]][[1]]
      datavalues$data <- hot_to_r(input$table)
      datavalues$data[xi+1,3] = datavalues$data[xi+1,1] + datavalues$data[xi+1,2]
    }
  )
  
  #plotly graph also changes as the table cell values changes
  output$plot <- renderPlotly(
    {
      plot_ly(data=datavalues$data, x=~c, type="histogram")
    }
  )
  
  #save the changes data table to local
  #create the save function
  saveData <- function()
  {
    write.csv(datavalues$data, file = "MyData.csv", row.names = FALSE)
  }
  
  #on save button click event, dataset will be saved to working directory
  observeEvent(input$saveBtn, saveData())
  
  
})