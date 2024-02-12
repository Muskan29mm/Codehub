library(shiny)

shinyUI(
  fluidPage(
    titlePanel("Demonstration of renderUI in shiny - Dynamically creating the tabs based on user inputs"),
    sidebarLayout(
      sidebarPanel(
        # numeric input is used to enter the number of tabs needed
        numericInput("n", "Enter the number of tabs needed", 1)   #by default it is number
      ),
      mainPanel(
        # uiOutput is used in ui.r to interact with the output variable of the renderUI() function in server.r
        uiOutput('tabs')
      )
    )
  )
)