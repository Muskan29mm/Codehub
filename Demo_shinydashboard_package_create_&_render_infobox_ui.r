library(shiny)
library(shinydashboard)

shinyUI(
  dashboardPage(
    dashboardHeader(title = "Demo shinydashboard package - create & render infobox", titleWidth = 800),
    
    dashboardSidebar(
      sidebarMenu(
        menuItem("Infobox", tabName = "IB")
      )
    ),
    
    dashboardBody(
      tabItems(
        tabItem(tabName = "IB",
                fluidRow(infoBoxOutput("min_", width = 3), 
                         infoBoxOutput("max_", width = 3), 
                         infoBoxOutput("sd_", width = 3), 
                         infoBoxOutput("mean_", width = 3)),
                
                fluidRow(infoBoxOutput("median_", width = 6)),
                
                fluidRow(infoBoxOutput("inline"), 
                         tags$style("#inline {height:75px; line-height:75px; padding-top:0px; width:400px;}")))
      )
    )
  )
)

