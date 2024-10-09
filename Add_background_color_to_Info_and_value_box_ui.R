library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  skin = "red",
  dashboardHeader(title = tags$div(style = "white-space: nowrap; overflow: hidden; text-overflow: ellipsis;", 
                                   "Demo - Add Background Color to Info Box and Value Box")),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Box Color (InfoBox/ValueBox)", tabName = "boxcolor", icon = icon("box"))
    )
  ),
  dashboardBody(
    tabItems(
      tabItem(tabName = "boxcolor",
              fluidRow(
                infoBox(title = "Red", value = "007", color = "red", width = 3),
                infoBox(title = "Yellow", value = "007", color = "yellow", width = 3),
                infoBox(title = "Aqua", value = "007", color = "aqua", width = 3),
                infoBox(title = "Blue", value = "007", color = "blue", width = 3)
              ),
              fluidRow(
                infoBox(title = "Navy", value = "007", color = "navy", width = 3),
                infoBox(title = "Teal", value = "007", color = "teal", width = 3),
                infoBox(title = "Olive", value = "007", color = "olive", width = 3),
                infoBox(title = "Lime", value = "007", color = "lime", width = 3)
              ),
              fluidRow(
                infoBox(title = "Purple", value = "007", color = "purple", width = 3, fill = TRUE),
                infoBox(title = "Maroon", value = "007", color = "maroon", width = 3, fill = TRUE),
                infoBox(title = "Black", value = "007", color = "black", width = 3, fill = TRUE),
                infoBox(title = "Fuchsia", value = "007", color = "fuchsia", width = 3, fill = TRUE)
              ),
              fluidRow(
                infoBox(title = "Orange", value = "007", color = "orange", width = 3),
                infoBox(title = "Light Blue", value = "007", color = "aqua", width = 3),  # Use aqua for light blue
                infoBox(title = "Green", value = "007", color = "green", width = 3)
              )
      )
    )
  )
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)
