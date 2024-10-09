library(shiny)
library(plotly)

ui <- fluidPage(
  h3("R Plotly Demo - Disabling the Plotly Toolbar"),
  plotlyOutput("myplot")
)
