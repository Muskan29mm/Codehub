library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  dashboardHeader(title = "Demo - Custom CSS in Shinydashboard", titleWidth = 800),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Dashboard 1", tabName = "dashboard"),
      menuItem("Dashboard 2", tabName = "dashboard2"),
      menuItem("Dashboard 3", tabName = "dashboard3")
    )
  ),
  dashboardBody(
    "This is the dashboard body",
    tags$head(
      tags$link(rel = "stylesheet", type = "text/css", href = "custom.css")
    )
  )
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)
