library(shiny)

shinyUI(
  fluidPage(
    h5("R shiny Demo - dateInput widget"),
    hr(),
    
    #add a data input widget
    dateInput("date",
              label="Date Input",
              value = Sys.Date(),
              min = Sys.Date() - 10,  # user can go 10 days before current system date
              max = Sys.Date() + 10, # user can go 10 days after current system date
              width = "100px"),
              #format = "mm/dd/yy"),  # to change the format
    textOutput("seldate")
  )
)