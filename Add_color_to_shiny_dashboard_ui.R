library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  skin = "blue",
  dashboardHeader(title = "Demo - Add Color to shinydashboard Box (Status Argument)"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Box Status", tabName = "boxstatus", icon = icon("box"))
    )
  ),
  dashboardBody(
    tabItems(
      tabItem(tabName = "boxstatus",
              fluidRow(
                box(title = "Danger (Red)", status = "danger", width = 2, solidHeader = TRUE),
                box(title = "Primary (Blue)", status = "primary", width = 2, solidHeader = TRUE),
                box(title = "Success (Green)", status = "success", width = 2, solidHeader = TRUE),
                box(title = "Info (Light Blue)", status = "info", width = 2, solidHeader = TRUE),
                box(title = "Warning (Orange)", status = "warning", width = 2, solidHeader = TRUE)
              )
      )
    )
  )
)

server <- function(input, output) {}

shinyApp(ui, server)
