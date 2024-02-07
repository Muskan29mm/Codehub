library(shiny)

shinyUI(
  fluidPage(
    titlePanel("Demonstration of sliderInput Widget"),
    sidebarLayout(
      sidebarPanel(
        sliderInput("slide", "Select the value from slider", min=0, max=5, value=3,animate=TRUE)
        #sliderInput("slide", "Select the value from slider", min=0, max=5, value=3, step=0.2)
        #sliderInput("slide", "Select the value from slider", min=0, max=5, value=c(2,3))
      ),
      mainPanel(
        textOutput("out")
      )
    )
  )
)

getwd()
setwd("C:/Users/lenovo/Desktop/shiny")
