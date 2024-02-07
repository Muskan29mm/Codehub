library(shiny)

shinyUI(
  fluidPage(
    titlePanel("Demonstration of Radio Buttons in shiny"),
    sidebarLayout(
      sidebarPanel(("Enter the personal information"),
                   textInput("name","Enter your name",""),
                   textInput("age","Enter your Age",""),
                   radioButtons("gender","Select your gender", list("Male","Female"),"")),
      mainPanel(("Personal Information"),
                textOutput("myname"),
                textOutput("myage"),
                textOutput("mygender"))
      
    )
  )
)


setwd("C:/Users/lenovo/Desktop/shiny")




