library(shiny)

shinyUI(
  fluidPage(
    titlePanel("Demonstration of select input UI widget in shiny"),
    sidebarLayout(
      sidebarPanel(
        selectInput("statenames","Select the state",c("California","Florida","Texas","Newyork","Arizona"),selected = "Texas", selectize = TRUE)
        #to select multiple options
        #selectInput("statenames","Select the state",c("California","Florida","Texas","Newyork","Arizona"),selected = "Texas", selectize = TRUE, multiple = TRUE)
        # if we want to set default value 
        #selectInput("statenames","Select the state",c("California","Florida","Texas","Newyork","Arizona"),selected = "Texas")
      ),
      mainPanel(
        textOutput("state")   #here we will write name of output variable that is in server 
      )
    )
  )
)

