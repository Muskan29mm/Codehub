library(shiny)

shinyServer(function(input, output)
  {
    output$seldate <- renderText(
      {
        #paste("Selected Date is :", input$date)
        #paste("Selected Date is :", format(input$date, "%m%d%y") 
        as.character(input$date)
      }
    )
})