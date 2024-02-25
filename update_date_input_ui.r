library(shiny)

shinyUI(
  fluidPage(
    h5("Demo Example - updateDateInput() - Update the date and reset it"),
    hr(),
    
    # add an action button to update the date
    actionButton(inputId = "button", label = "Date + 7"),
    
    # add an action button to reset the date
    actionButton(inputId = "reset", label = "Reset"),
    
    # add a date input widget
    dateInput("inDate", label = "Input Date", value = Sys.Date())
  )
)