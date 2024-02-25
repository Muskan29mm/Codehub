library(shiny)
library(shinydashboard)

shinyUI(
  dashboardPage(
    dashboardHeader(title = "Demo shinydashboard package - add tab pages to menu items", titleWidth = 700),
    
    dashboardSidebar(
      sidebarMenu(
        menuItem(text = "About", tabName = "about", icon = icon("clipboard")),
        menuItem("Data", tabName = "data", icon = icon("database")),
        menuItem("myGithub", href = "https://github.com/Muskan29mm/Codehub", icon=icon("code"))
      )
    ),
    
    dashboardBody(
      # within tabitems(), define the pages for sidebar menu items
      tabItems(
        tabItem(tabName = "about", p("This example app demonstrates basic layout of R shinydashboard package"),
                p("We will be using mtcars dataset for the sake of demo")),
        tabItem(tabName = "data", dataTableOutput("mydatatable"))
      )
    )
  )
)