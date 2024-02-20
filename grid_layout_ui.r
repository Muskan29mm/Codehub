library(shiny)
library(ggplot2)

dataset <- diamonds

shinyUI(
  fluidPage(
    titlePanel(title = "Diamond Explorer"),
    h4("Demo Grid Layout in R shiny. Widgets into different rows and columns. Introducing fluidrow() & column functions"),
    h5("The first parameter to the column() function is it's width(out of a total of 12 columns.it's also possible to offset the position of columns to achieve more precise control over the location of UI elements. You can move columns to the right by adding the offset parameter to the column() function. Each unit of offset increases the left-margin of a column by a whole column."),
    h5("To create rows within the grid you use the fluidRow() function; to create columns within rows you use the column() function."),
    hr(),
    #start of the grid
    # Initializing the row
    fluidRow(
      #column allocation for widgets
      column(4,
             sliderInput(inputId = 'sampleSize', label = 'Sample Size',
                         min = 1, max=nrow(dataset), value=min(1000, nrow(dataset)),
                         step = 500, round = 0),
             br(),
             checkboxInput('jitter', 'Jitter'),
             checkboxInput('smooth', 'Smooth')
      
    ),
    column(4,
           selectInput('x', 'X', names(dataset)), #names is a function to set or get a names of the object
           selectInput('y', 'Y', names(dataset), names(dataset)[[2]]),
           selectInput('color', 'Color', c('None', names(dataset)))
           ),
    column(4,
           selectInput('facet_row', 'Facet Row', c(Nome='.', names(dataset))),
           selectInput('facet_col', 'Facet Column', c(None='.', names(dataset)))
   )
   
),
    hr(),
    plotOutput("plot")
))