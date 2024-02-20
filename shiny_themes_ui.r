library(shiny)
library(shinythemes)

shinyUI(fluidPage(
  theme=shinytheme("sandstone"),  #shinytheme is a function that comes with shinythemes package
  themeSelector(), # this will show drop down of all themes to select any one of them
  
  navbarPage(
    title = "Demo - Shiny themes",
    id="nav",
    tabPanel("Data", value="Data",
             sidebarLayout(
               sidebarPanel(
                 selectInput("dataset", "Select the dataset", choices=c("mtcars dataset","iris dataset")),
                 tags$hr(),
                 sliderInput("n", "Select no. of data rows", min = 2, max = 10, value = 2),
                 tags$hr(),
                 actionButton("button", "ActionButton"),
                 tags$hr(),
                 radioButtons("c", "Radiobuttons", c("Yes", "No"))
               ),
               mainPanel(
                 tabsetPanel(
                   tabPanel("Dataset", tableOutput("table")),
                   tabPanel("Summary Stats", verbatimTextOutput("summary")),
                   tabPanel("Data Rows",textOutput("rows")),
                   tabPanel("Number of Rows Selected",textOutput("txt1"))
                 )
               )
             )),
    tabPanel("Plots", value="Plots", plotOutput("plot"))
  )
))