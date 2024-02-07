#load package
library(shiny)

shinyUI(
  fluidPage(
    titlePanel(title = "This is my first shiny app, hello shiny"),
    sidebarLayout(position = "right",
      sidebarPanel(h3("this is side bar panel"),h4("widget"),h5("widget")),
      mainPanel(h4("this is main panel"),h5("Output will be displayed here"))
    )
  )
)

