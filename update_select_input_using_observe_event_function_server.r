library(shiny)

shinyServer(function(session, input, output)
  {
  #observeEvent() function is used in the cases when an action need to be performed based on event
  # in this case the second selectInput() choices to be updated based on the changes in the first select input()

  #update based on the year change event
  
    observeEvent(
    input$Year,
    updateSelectInput(session, "Month", "Month",
                      choices = data$Month[data$Year==input$Year])
  )
  # update as soon as Month gets populated according to the year and month selected
  observeEvent(
    input$Month,  #this is to catch the change in Month
    updateSelectInput(session, "Name", "Name",
                      choices = data$Name[data$Month==input$Month & data$Year==input$Year])
  )
  #just to display the dataset we created in global.r
  output$dataset <- renderTable(
    {
      data
    }
  )
})