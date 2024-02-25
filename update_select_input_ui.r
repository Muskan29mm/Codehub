library(shiny)

myChoices <- names(mtcars)

ui <- fluidPage(
  h5("Demo Example - 'Select All/None' option for choices using updateSelectInput() & checkboxInput()"),
  hr(),
  selectInput('mtcars', label = "mtcars column variables", choices = myChoices, multiple = TRUE),
  checkboxInput('all', 'Select All/None', value = TRUE)
)



#shinyApp(ui, server)
