library(shiny)

shinyUI(
  fluidPage(
    titlePanel("Multiple action buttons using reactive values() - an example"),
    br(),
    mainPanel(
      actionButton("buttonuno", "Button 1"),
      actionButton("buttondos", "Button 2"),
      actionButton("buttontres", "Button 3"),
      br(),
      textOutput("display")
    )
    )
  )
