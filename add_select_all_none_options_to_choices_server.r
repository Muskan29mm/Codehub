library(shiny)

shinyServer(function(input, output, session)
  {
  observe(
    {
      mychoices <- names(mtcars)
      updateCheckboxGroupInput(
        session, 'mtcars', choices = mychoices,
        selected = if(input$all) mychoices else NULL  # if checkbox input all then show all the choices
      )
    }
  )
})