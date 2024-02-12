library(shiny)

shinyUI(
  fluidPage(
    titlePanel("Demonstration of adding image or video"),
    sidebarLayout(
      sidebarPanel(
        fileInput("file","Upload the file", multiple = T), #fileinput() function is used to get the file upload control option
        h6("Default max. file size is 5MB"),
        hr(),
        h5("Select the read.table parameters below"),
        checkboxInput(inputId = 'header', label = 'Header', value = FALSE),
        checkboxInput(inputId = "stringAsFactors", "stringAsFactors", FALSE),
        br(),
        radioButtons(inputId = 'sep', label = 'Separator', choices = c(Comma=',',Semicolon=';',Tab='\t',Space=''), selected = ','),
        h6(" Powered by:"),
        tag$img(src='RStudio-Ball.png', height=50,width=50)
        ),
      mainPanel(
        uiOutput("tb")
      )
    )
  )
)