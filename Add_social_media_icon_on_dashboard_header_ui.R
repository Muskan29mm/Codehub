library(shiny)
library(shinydashboard)

title <- tags$a(href='https://www.google.com',
                icon("diamond"),
                "Diamonds Explorer")

ui <- fluidPage(
  dashboardPage(
    dashboardHeader(title = title, titleWidth = 600,
                    tags$li(class="dropdown", tags$a(href="https://youtu.be/6mwgMNgc8jI?list=PL6wLL_RojB5xNOhe2OTSd-DPkMLVY9DfB", icon("youtube"), "My Channel", target="_blank")),
                    tags$li(class="dropdown", tags$a(href="https://linkedin.com/in/muskan-mittal-7aa072237", icon("linkedin"), "My Profile", target="_blank")),
                    tags$li(class="dropdown", tags$a(href="https://github.com/Muskan29mm", icon("github"), "Source Code", target="_blank"))
                    ),
    dashboardSidebar(),
    dashboardBody(
      tags$head(
        tags$link(rel = "stylesheet", type = "text/css", href = "custom2.css")  # custom2.css is stored in www folder
      ),
      # Body content can go here
      h3("Welcome to the Diamonds Explorer dashboard!")
    )
  )
) 

# Server
server <- function(input, output, session) {
  
}

# Run the app
shinyApp(ui, server)