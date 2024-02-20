library(shiny)

shinyUI(
  fluidPage(
    titlePanel("Demo updateselectInput() and also introducing observeEvent() function"),
    selectInput("Year", "Year", choices = unique(data$Year)),
    selectInput("Month","Month", choices = "", selected = ""),
    selectInput("Name","Name", choices = "", selected = ""),
    tableOutput("dataset")
      
      )
    )
  
