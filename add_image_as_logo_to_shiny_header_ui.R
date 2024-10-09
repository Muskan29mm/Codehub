library(shiny)
library(shinydashboard)

# Title with link and image
title <- tags$a(href = 'https://www.google.com',
                tags$img(src = "rstudio.jfif", height = '50', width = '50'),
                ' Diamonds Explorer',
                style = "text-decoration: none; color: black; margin-left: 10px;")

# UI
ui <- dashboardPage(
  dashboardHeader(title = title, titleWidth = 600),
  dashboardSidebar(),
  dashboardBody(
    tags$head(
      tags$link(rel = "stylesheet", type = "text/css", href = "custom1.css")  # custom1.css is stored in www folder
    ),
    # Body content can go here
    h3("Welcome to the Diamonds Explorer dashboard!")
  )
)

# Server
server <- function(input, output, session) {
  
}

# Run the app
shinyApp(ui, server)
