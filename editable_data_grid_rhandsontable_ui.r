library(shiny)
library(rhandsontable)


shinyUI(fluidPage(
  fluidRow(
    titlePanel(title = "Demo rhandsontable & shiny - exampple app - editable data table"),
    h4("rhandsontable is a htmlwidget wrapper package based on the handsontable.js libraray"),
    h4("# how to create a rhandsontable object and use in shiny"),
    h4("# renderRHandsontable()"),
    h4("# rHandsontableOutput()"),
    hr(),
    column(4, helpText("non-editable table"),
           tableOutput("table1")),
    column(4,helpText("editable table"),
           rHandsontableOutput("table"),
           br(),
           actionButton("saveBtn", "Save"))
  )
)
  
)