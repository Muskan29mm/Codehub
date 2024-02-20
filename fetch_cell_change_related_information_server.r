library(shiny)

shinyServer(function(input, output, session)
  {
  # creating a dataset with 3 column variables
  
  a = sample(1:10, replace=TRUE)
  b = sample(1:10, replace=TRUE)
  c = a + b
  df = data.frame(a=a, b=b, c=c)
  
  # display the data table
  output$table <- renderRHandsontable(
    {
      rhandsontable(df)
    }
  )
  
  observeEvent(
    input$table$changes$changes,
    {
      xi = input$table$changes$changes[[1]][[1]] #fetch row index
      yi = input$table$changes$changes[[1]][[2]] #fetch column index
      old = input$table$changes$changes[[1]][[3]] #fetches the old values of the cell
      new = input$table$changes$changes[[1]][[4]] #fetches the new value of the cell
      
      #display the change event call back information
      output$changeinfo <- renderPrint(
        {
         list(paste("Row index of cell which is changed", xi),
              paste("Column index of cell which is changed", yi),
              paste("Old value of the cell", old),
              paste("New value of the cell", new)) 
        }
      )
    }
  )
})