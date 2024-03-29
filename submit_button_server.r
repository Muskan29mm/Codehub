library(shiny)

shinyServer(function(input, output)
  {
    output$txt1 <- renderText(
      {
        paste("My first name is: ", input$text1)
      }
    )
    output$txt2 <- renderText(     #here txt2 means output of last name is stored in txt2
      {
        paste("My last name is: ", input$text2)
      }
    )
})
