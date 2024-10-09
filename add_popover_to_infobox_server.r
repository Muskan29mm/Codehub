library(shiny)
library(shinydashboard)
library(shinyBS)
library(ggplot2)

server <- function(input, output, session) {
  output$info1 <- renderInfoBox({
    infoBox("Mean", 
            round(mean(diamonds$price), 2),
            icon = icon("usd"),
            subtitle = tags$a(icon("question-circle"), id = "q1", style = "cursor: pointer;"))
  })
  
  output$info2 <- renderInfoBox({
    infoBox("Median", 
            median(diamonds$price),
            icon = icon("usd"),
            subtitle = tags$a(icon("info-circle"), id = "q2", style = "cursor: pointer;"))
  })
}
