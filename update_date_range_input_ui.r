library(shiny)

shinyUI(
  fluidPage(
    titlePanel("demo Example - updateDateRangeInput() - reset dates"),
    
    actionButton(inputId = "reset", label = "Reset Date"),
    dateRangeInput(inputId = "date", label = "Select Date Range",
                   start = Sys.Date(),
                   end = Sys.Date(),
                   min = Sys.Date()-10,
                   max = Sys.Date()+10)
  )
)