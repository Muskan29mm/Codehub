library(shiny)

shinyUI(
  fluidPage(
    titlePanel("Dynamic user interface - RenderUI"),
    sidebarLayout(
      sidebarPanel(
        selectInput(inputId = "data1", label = "Select the dataset of your choice", choices = c("iris","mtcars","trees")),
        br(),
        helpText("The following selectInput drop down choices are dynamically populated based on the dataset selected by the "),
        br(),
        uiOutput("vx"), #vx is coming from renderUI in server.r
        br(),
        uiOutput("vy") #vy is coming from renderUI in server.r
      ),
      mainPanel(
        plotOutput("p")
      )
    )
  )
)

