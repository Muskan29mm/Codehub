library(shiny)

shinyUI(
  fluidPage(
    titlePanel(title = h4("Demonstration of Reactive function",align="center")),
    sidebarLayout(
      sidebarPanel(
        selectInput("var", "1. Select the variable from the iris Dataset",choices = c("Sepal.Length" = 1, "Sepal.Width" = 2, "Petal.Length" = 3, "Petal.Width" = 4),selected = 1),
        br(),
        sliderInput("bins","2.Select the number of BINS for Histogram", min=5, max=25, value=15),  #here value is default values
        br(),
        radioButtons("color","3.Select the color of Histogram",choices=c("Green","Red","Yellow","Blue"),selected="Green") # here selected means default
      ),
      mainPanel(
        plotOutput("myhist"))
    )
  )
)
