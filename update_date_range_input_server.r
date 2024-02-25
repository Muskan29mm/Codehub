library(shiny)

shinyServer(function(input, output, session)
{
  observeEvent(input$reset,
               {
                 updateDateRangeInput(session, inputId = "date", start = Sys.Date(), end = Sys.Date())
               })
}
  
)
