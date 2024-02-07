library(shiny)

shinyUI(
  fluidPage(
    titlePanel("Demonstration of text input widget in shiny"),
    sidebarLayout(
      sidebarPanel(("Enter the personal information"),
                  textInput("name","Enter your name",""),
                  textInput("age","Enter your Age","")),
      mainPanel(("Personal Information"),
                textOutput("myname"),
                textOutput("myage"))
      
    )
  )
)




