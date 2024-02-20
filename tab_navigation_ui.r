library(shiny)
library(datasets)
shinyUI(
 fluidPage(
   titlePanel(title = "Demo navlist Panel navigation Layout in shiny"),
   h3("'navlistPanel' gives ability to have tab like pages. it is kind of sidebar panel but with tab like navigation through tab links on left and corresponding pages on right side. Helpful in cases when the tabsets at the top of page gets clutteres with multiple pages."),
   
   navlistPanel(
     widths = c(3, 9),
     "Data",
     tabPanel("About", h3("This is the first tab or page")),
     tabPanel("Data Table",
              tableOutput("table1"),
              h3("This is the first tab or page")),
     tabPanel("Data Summary", verbatimTextOutput("summary1")),
   
      "Plots",
     tabPanel(title = "ScatterPlot", plotOutput("scatterplot")),
     tabPanel(title = "Histogram",
              sliderInput("n",
                          "Breaks",
                          min = 5,
                          value = 15,
                          max = 25
                          ),
              plotOutput("plot"))
              )
   )
    )
