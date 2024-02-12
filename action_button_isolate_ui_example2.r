library(shiny)

shinyUI(
  fluidPage(
    titlePanel("Demonstration of actionButton() and isolate"),
    sidebarLayout(
      sidebarPanel(
        selectInput("dataset","Choose a dataset:",
                    choices = c("iris","pressure","mtcars")),
        numericInput("obs","Number Of Observation:",6),
        br(),
        
        p("In this, Changing the dataset will update the structure in the main Panel."),
        br(),
        actionButton("act","Click to update the observation"),
         ),
      mainPanel(
        h4(textOutput("dataname")),
        #display the structure of the selected dataset
        verbatimTextOutput("structure"),
        
        h4(textOutput("observation")),
        # display the observations of the selected dataset
        tableOutput("view")
        
      )
    )
    )
  )