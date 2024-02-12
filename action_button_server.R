library(shiny)

shinyServer(function(input, output)
  {
  output$txt1 <- renderText(
    {
      paste("My first name is: ", input$text1)
    }
  )
  output$txt2 <- renderText(
    {
      # input from the action button from ui.r
      #initial value of action is zero but when clicked the value increments each time it is called
      input$action
      # isolate function is used to create dependency on the cation button
      # if isolate is not used, text will be displayed reactivity as soon as user input the text
      isolate(paste("My last name is :", input$text2))
    }
  )
})