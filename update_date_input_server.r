library(shiny)

shinyServer(function(input, output, session)
  {
  # Event Handler - Observe the click of update date button
  observeEvent(input$button, updateDateInput(session, "inDate", value = input$inDate + 7))
  
  
  #Event Handler - Observe the click of reset button
  observeEvent(input$reset, updateDateInput(session, "inDate", value = Sys.Date()))
  
 })