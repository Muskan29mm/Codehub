library(shiny)

library(shinyjs)

shinyServer(function(input, output, session)
  {
  delay(60000, hide("t")) # this will hide the text after given delay perios in ms
  
  observeEvent(input$alert,
               alert("This is a alert message."))
  
  observeEvent(input$showh,
               show("txt")) # show() is shiny js function
  
  observeEvent(input$hideh,
               hide("txt")) #hide() is shiny js function
  
  observeEvent(input$shows,
               show("slider")) 
  
  observeEvent(input$hides,
               hide("slider"))
  
  observeEvent(input$enable, enable("able")) #enable is shinyjs function
  
  observeEvent(input$disable, disable("able")) #disable is shinyjs fubction
  
  output$plot <- renderPlot(
    {
      plot(mtcars$mpg)
    }
  )
  
  observeEvent(input$button,{
    toggle("plot")
  })
})