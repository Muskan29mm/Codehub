library(shiny)
library(shinydashboard)

shinyUI(
  dashboardPage(
    dashboardHeader(title = "Demo shinydashboard package - create & render valuebox", titleWidth = 800),
    
    dashboardSidebar(
      sidebarMenu(
        menuItem("valueBox", tabName = "VB")
      )
    ),
    
    dashboardBody(
      tabItems(
        tabItem(tabName = "VB",
                fluidRow(valueBoxOutput("min_", width = 3), valueBoxOutput("max_", width = 3), valueBoxOutput("sd_", width = 3), valueBoxOutput("mean_", width = 3)),
                fluidRow(valueBoxOutput("median_", width = 6), valueBoxOutput("orders_", width = 3), valueBoxOutput("approved_", width = 3))
        
      )
    )
    
    )
    
  )
)