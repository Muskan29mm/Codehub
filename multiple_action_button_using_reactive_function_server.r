library(shiny)

shinyServer(
  (function(input,output)
    {
    values <- reactiveValues(uno = 0, dos = 0, tres = 0)
    # uno would serve for the reactive values for the first button
    # dos as reactive value for second button
    # tres as reactive value for third button
    
    observeEvent(input$buttonuno,
                 {
                   values$uno <- 1
                   values$dos <- 0
                   values$tres <- 0
                 })
    observeEvent(input$buttondos,
                 {
                   values$uno <- 0
                   values$dos <- 1
                   values$tres <- 0
                 })
    observeEvent(input$buttontres,
                 {
                   values$uno <- 0
                   values$dos <- 0
                   values$tres <- 1
                 })
    
    output$display <- renderText(
      {
        if(values$uno)
          paste("Button # 1 selected")
        else
          if(values$dos)
            paste("Button # 2 selected")
        else
          if(values$tres)
            paste("Button # 3 selected")
        else
          return()
      }
    )
  })
)