library(shiny)
library(shinydashboard)
library(ggplot2)

ui <- fluidPage(
  h4("Demo - brushedPoints - Interactive plots - select data points in plot - return the rows of data that are selected by brush"),
  
  plotOutput(outputId = "graph", brush = "plot_brush"),
  
  fluidRow(
    column(width = 5, tags$b(tags$i("Actual Dataset")), tableOutput("data")),
    column(width = 8, tags$b(tags$i("Rows corresponding to datapoints under brush")), tableOutput("data_brush"))
  )
)



