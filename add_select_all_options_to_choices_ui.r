library(shiny)

choices <- c("Select All", "Choice 1", "Choice 2", "Choice 3")

shinyUI(
  fluidPage(
    h5("Demo Example - Adding 'Select All' option to the selectinput to select all the choices at once using update"),
    hr(),
    selectInput("myselect", "Select box", choices = choices, multiple = TRUE, selected = "choice 1"),
    verbatimTextOutput("selected")
  )
  
)
