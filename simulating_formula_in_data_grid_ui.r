library(shiny)
library(plotly)
library(rhandsontable)

shinyUI(
  fluidPage(
    titlePanel(title = "Demo - 'rhandsontable' package and a simple example app with shiny"),
    h4("# simulate formula in editable rhandson data table"),
    
    fluidRow(column(4, rHandsontableOutput('table'), actionButton("saveBtn", "Save"), offset = 2),
             column(4,plotlyOutput("plot"), offset = 2))
    
  )
)