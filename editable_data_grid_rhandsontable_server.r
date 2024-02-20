library(shiny)
library(rhandsontable)

#creating dataset
a = sample(1:10, replace = TRUE)
b = sample(1:10, replace =TRUE)
c = a + b
df1 = data.frame(a=a, b=b, c=c)

shinyServer(function(input, output, session)
  {
  #table1 object will have the datatable
  output$table1 <- renderTable(
    {
      df1
    }
  )
  # return rhandsontable type object - editable excel type grid data
  output$table <- renderRHandsontable(
    {
      rhandsontable(df1)  #convert the R dataframe to rhandsontable object
    }
  )
  
  #on click of button the file will be saved to the working directory
  #hot_to_r() converts the rhandsontable object to r data  object
  observeEvent(input$saveBtn,
               write.csv(hot_to_r(input$table), file = "MyData",row.names = FALSE))
})