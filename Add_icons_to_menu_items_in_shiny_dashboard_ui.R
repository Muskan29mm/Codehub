library(shiny)
library(shinydashboard)

ui <- fluidPage(
  dashboardPage(
    dashboardHeader(title = "Demo - add icons to menu items in shinydashboard", titleWidth = 600),
    dashboardSidebar("This is sidebar",
                     sidebarMenu(
                       menuItem("Dashboard", tabName = "dashboard",
                                icon=icon("tachometer")),
                       menuItem("Dashboard2", tabName = "dashboard2",
                                icon=icon("tachometer", class = "fa-lg")),
                       menuItem("Dashboars3", tabName = "dashboard3",
                                icon=icon("tachometer", class = "fa-rotate-90")),
                       menuItem("Settings1", tabName = "settings1",
                                icon=icon("cog", class = "fa-spin")
                                ),
                       tags$style(".fa-spin {text-align:center;}"),
                       
                       menuItem("Settings2", tabName = "settings2",
                                icon=icon("cog", class = "fa-pulse")
                                ),
                       menuItem("Settings3", tabName = "settings3",
                                icon=icon("cog", class = "fa-border")
                                ),
                       menuItem("HourGlass", tabName = "hourglass",
                                icon=icon("hourglass", lib = "glyphicon")
                                ),
                       menuItem("BoxStatus", tabName = "boxstatus", icon = icon("square")),
                       
                       menuItem("BoxColor", tabName = "boxcolor", icon=icon("square", class = "mystyle")),
                       tags$style(".mystyle {color:yellow;}")
                     )
                ),
    dashboardBody()
  )
  
)
server <- function(input, output, session)
{
  
}
shinyApp(ui, server)