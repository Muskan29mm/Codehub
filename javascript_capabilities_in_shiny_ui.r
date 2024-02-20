library(shiny)
library(shinyjs)

shinyUI(
  fluidPage(
    useShinyjs(),
    titlePanel("shinyjs - hide, show, toggle, hidden, alert, delay, enable, disable element"),
    h4("Add common javascript capabilioties to shiny app without knowing javascript"),
    hr(),
    
    tags$div(id="t",
             style='color:green;',
             list(h4("Hello and Welcome to this demo! This is a welcome message"),
                  hr())),
    
    fluidRow(
      column(width = 3,
             list(
               actionButton(inputId = "alert", label = "Click to alert")
             ) ),
      
      column(width=3, atyle="outline-style: groove; outline-width: thin;",
             list(actionButton(inputId = "hides", label = "Hide-Slider"),
                  actionButton(inputId = "shows", label = "Show Slider"),
                  
                  sliderInput(inputId = "slider", label = "Slider", min = 0, max = 10, value = 4))
             ),
      
      column(width=3,
            list(
              actionButton(inputId = "showh", label = "Show hidden text"),
              actionButton(inputId = "hideh", label = "Hide Text"),
              
              br(),
              hidden(tags$div(id="txt", list(helpText("This is a help text. you can hide"))))
            )),
      
    column(width = 3, style="outline-style: groove; outline-widtg: thin;",
           list(actionButton("disable", "Disable"),
                actionButton("enable", "Enable"),
                sliderInput("able", "slider", min = 0, max = 10, value = 5))
           )
    ),
    fluidRow(
      column(width =3, list(hr(),
                            actionButton("button", "Click and toggle plot"),
                            plotOutput("plot")))
    )
  )
)