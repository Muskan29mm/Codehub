library(shiny)

server <- function(input, output, session)
  {
  myChoices <- reactive(names(mtcars))
  
  observeEvent(input$all,
               {
    if(input$all)
      {
      updateSelectInput(session, 'mtcars', choices = myChoices(), selected = myChoices())
    } 
                 else 
                   {
      updateSelectInput(session, 'mtcars', choices = myChoices(), selected = character(0))
    }
  })
}
