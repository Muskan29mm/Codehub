library(shiny)

shinyUI(
  fluidPage(
    titlePanel(title = "Demonstration of submitbutton() in shiny"),
    sidebarLayout(
      sidebarPanel(
        textInput("text1","Enter your First Name"),
        textInput("text2","Enter your Last Name"),
        submitButton("Update"),
        p("Click on the update button to display the first and last name entered by the user.")
      ),
      mainPanel(
        textOutput("txt1"),
        textOutput("txt2")
      )
    )
  )
)