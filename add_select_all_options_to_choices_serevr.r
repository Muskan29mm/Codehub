library(shiny)

shinyServer(function(input, output, session){
  observe(
    {
      if("Select All" %in% input$myselect)
        selected_choices=choices[-1]
      else
        selected_choices=input$myselect
      updateSelectInput(session, "myselect", selected = selected_choices)
    }
  )
  
  output$selected <- renderText(
    {
      paste(input$myselect, collapse = ",")
    }
  )
}
)