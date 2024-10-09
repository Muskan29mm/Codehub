library(shiny)
library(shinydashboard)
library(ggplot2)

ui <- fluidPage(
  h4("Demo - brushedPoints - Interactive plots - select data points in plot - return the rows of data that are selected by brush "),
  
  plotOutput(outputId = "boxplot", brush = "plot_brush_"),
  
  fixedRow(
    column(width=5, tags$b(tags$i("Actual Dataset")), tableOutput("data1")),
    column(width=5, tags$b(tags$i("Updated Dataset")), tableOutput("data2"), offset = 2)
)
)
