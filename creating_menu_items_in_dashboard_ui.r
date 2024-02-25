library(shiny)
library(shinydashboard)

shinyUI(
  dashboardPage(
    dashboardHeader(title = "Demo shinydashboard package - create menu items", titleWidth = 600),
    
    dashboardSidebar(
      # add menu items to this sidebar
      # menu items are like tabs when clicked open up a apge in tab item
      sidebarMenu(
        menuItem(text = "About", tabName = "about", icon=icon("clipboard")),
        menuItem(text = "Data", tabName = "data", icon = icon("database"), badgeLabel = "new", badgeColor = "green"),
        menuItem("Link to code files", href = "https://www.google.com", icon = icon("code"))
      )
    ),
    dashboardBody()
    
  )
)