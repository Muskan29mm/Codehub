library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  skin = "green",
  dashboardHeader(title = "Demo - skin in shinydashboard (blue theme - default)", titleWidth = 600),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Home", tabName = "home", icon = icon("home")),
      menuItem("About", tabName = "about", icon = icon("info"))
    )
  ),
  dashboardBody("This is dashboard body")
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)

# Skin is used to change background color for header , 
# Available Colors for skin
# "black", "purple", "green","red", "yellow", "blue"
