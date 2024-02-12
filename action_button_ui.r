library(shiny)

shinyUI(
  fluidPage(
    titlePanel("A Very Simple Demonstration of actionButton and isolate in shiny"),
    sidebarLayout(
      sidebarPanel(
        textInput("text1","Enter your First Name"),  #text1 is input id 
        textInput("text2","Enter your Last Name"),
        actionButton("action","Update Last Name!"),
        p("Click on the Update button to update and display the last name.")
      ),
        mainPanel(
          textOutput("txt1"),  #txt1 is output id
          textOutput("txt2")   #txt2 is another input id
        )
              
          
    )
  )
)