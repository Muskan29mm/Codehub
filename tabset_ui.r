library(shiny)

shinyUI(
  fluidPage(
    titlePanel(title = h4("Iris Dataset",align="center")),
    sidebarLayout(
      sidebarPanel(
        selectInput("var","1.Select the variable from the iris Dataset", choices=c("Sepal.Length" = 1,"Sepal.Width" = 2,"Petal.Length" = 3, "Petal.Width" = 4),selected = 1),
        br(),
        sliderInput("bins","2.Select the Number of bins for histogram", min=5, max=25,value=15),
        br(),
        radioButtons("color","3.Select the color of histogram",choices=c("Green","Red","Yellow","Blue"),selected="Red")
      ),
      mainPanel(
        tabsetPanel(type = "tab",
                    tabPanel("Summary",verbatimTextOutput("sum")),
                    tabPanel("Structure",verbatimTextOutput("str")),
                    tabPanel("Data",tableOutput("data")),
                    tabPanel("Plot",plotOutput("myhist")))
      )
    )
  )
)

